import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';

part 'database.g.dart';


Future<void> deleteDatabase() async{
  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(p.join(dbFolder.path,'db.sqlite'));
  if (await file.exists()) {
    await file.delete();
    print('BD excluído');
  }
}

Future<bool> shouldDeleteDatabase() async {
  // Obtém a instância de SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  // Retorna o valor indicando se o banco de dados foi excluído anteriormente
  return prefs.getBool('db_deleted') ?? false;
}

Future<void> markDatabaseAsDeleted() async {
  final prefs = await SharedPreferences.getInstance();
  // Marca que o banco de dados foi excluído
  await prefs.setBool('db_deleted', true);
}

class Confeitarias extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  TextColumn get telefone => text().nullable()();
  TextColumn get rua => text()();
  TextColumn get bairro => text()();
  TextColumn get cidade => text()();
  TextColumn get estado => text()();
  TextColumn get cep => text()();
  TextColumn get numero => text()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
}

class Produtos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 50)();
  TextColumn get descricao => text()();
  RealColumn get valor => real()();
  TextColumn get imagens => text().map(const JsonListConverter()).nullable()();
  IntColumn get confeitariaId => integer().customConstraint(
    'REFERENCES confeitarias(id) ON DELETE CASCADE')();
}

class JsonListConverter extends TypeConverter<List<String>,String>{
  const JsonListConverter() : super();
  
  @override
  List<String> fromSql(String fromDb) {
    final decoded = jsonDecode(fromDb);
    return List<String>.from(decoded);
  }
  
  @override
  String toSql(List<String> value) {
    return jsonEncode(value);
  }
}




@DriftDatabase(tables: [Confeitarias, Produtos])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;


  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
  );

  Future<List<Confeitaria>> getAllConfeitarias() => select(confeitarias).get();

  Future<int> insertConfeitaria(ConfeitariasCompanion entry) =>
      into(confeitarias).insert(entry);

  Future<void> updateConfeitaria(int id, ConfeitariasCompanion entry) {
  return (update(confeitarias)..where((tbl) => tbl.id.equals(id))).write(entry);
}

Future<Confeitaria?> getConfeitariaById(int id) async {
  final query = await (select(confeitarias)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  return query;
}


  Future<List<Produto>> getProdutos(int confeitariaId){
    return (select(produtos)..where((tbl)=>tbl.confeitariaId.equals(confeitariaId))).get();
  }
  Future<int> insertProduto(ProdutosCompanion produto){
    return into(produtos).insert(produto);
  }
  Future<void> removeProduto(int produtoId) async{
  await (delete(produtos)..where((tbl) => tbl.id.equals(produtoId))).go(); 
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    /*bool deletedb = await shouldDeleteDatabase();
    if(deletedb){
      await deleteDatabase();
      await markDatabaseAsDeleted();
    } */
    
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

 
    return NativeDatabase(file);
  });
}
