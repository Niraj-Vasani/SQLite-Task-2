abstract class AuditTablesRepository {
  Future<void> addAllJsonDataIntoDb();
  Future<List<List<dynamic>>> getAllTablesRowCount();
}
