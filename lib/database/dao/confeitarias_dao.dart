import 'package:drift/drift.dart';

import '../database.dart';

part 'confeitarias_dao.g.dart';

@DriftAccessor(tables: [Confeitarias])
class ConfeitariasDao extends DatabaseAccessor<AppDatabase>
    with _$ConfeitariasDaoMixin {
  ConfeitariasDao(super.db);

  Stream<List<Confeitaria>> getAllConfeitarias() =>
      select(confeitarias).watch();

  Future<void> insertConfeitaria(ConfeitariasCompanion confeitaria) {
    return into(confeitarias).insert(confeitaria);
  }

  Future<void> updateAt(int id, ConfeitariasCompanion confeitaria) {
    return (update(confeitarias)
      ..where((t) => t.id.equals(id))).write(confeitaria);
  }

  Future<void> deleteAt(int id){
    return (delete(confeitarias)..where((t) => t.id.equals(id))).go();
  }
}
