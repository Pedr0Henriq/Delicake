import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

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
  TextColumn get imagem => text().nullable()();
  IntColumn get confeitariaId => integer().customConstraint(
    'REFERENCES confeitarias(id) ON DELETE CASCADE')();
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

  Future<List<Produto>> getProdutos(int confeitariaId){
    return (select(produtos)..where((tbl)=>tbl.confeitariaId.equals(confeitariaId))).get();
  }
  Future<int> insertProduto(ProdutosCompanion produto){
    return into(produtos).insert(produto);
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase(file);
  });
}
