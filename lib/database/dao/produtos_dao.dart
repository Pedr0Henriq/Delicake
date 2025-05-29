import 'package:drift/drift.dart';
import '../database.dart';

part 'produtos_dao.g.dart';


@DriftAccessor(tables: [Produtos])
class ProdutosDao extends DatabaseAccessor<AppDatabase> with _$ProdutosDaoMixin {
  ProdutosDao(super.db);

  Stream<List<Produto>> getAllProdutos(Confeitaria confeitaria){
    return (select(produtos)
      ..where((t) => t.confeitariaId.equals(confeitaria.id)))
        .watch();
  } 

  Future<void> insertProduto(ProdutosCompanion produto) {
    return into(produtos).insert(produto);
  }

  Future<void> deleteAt(int id) {
    return (delete(produtos)..where((t) => t.id.equals(id))).go();
  }
}  