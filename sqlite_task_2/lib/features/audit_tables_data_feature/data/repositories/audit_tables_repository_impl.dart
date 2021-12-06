import '../datasources/audit_tables_data_source.dart';
import '../../domain/repositories/audit_tables_repository.dart';

class AuditTablesRepositoryImpl implements AuditTablesRepository {
  final AuditTableDataSource dataSource;

  AuditTablesRepositoryImpl(this.dataSource);

  @override
  Future<void> addAllJsonDataIntoDb() async {
    return await dataSource.addAllJsonDataIntoDb();
  }

  @override
  Future<List<List<dynamic>>> getAllTablesRowCount() async {
    return await dataSource.getAllTablesRowCount();
  }
}
