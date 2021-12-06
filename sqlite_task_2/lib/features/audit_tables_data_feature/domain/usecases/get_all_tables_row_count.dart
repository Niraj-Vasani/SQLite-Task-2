import '../repositories/audit_tables_repository.dart';

class GetAllTablesRowCountDbUseCase {
  final AuditTablesRepository repository;

  GetAllTablesRowCountDbUseCase(this.repository);

  Future<List<List<dynamic>>> call() async {
    return await repository.getAllTablesRowCount();
  }
}
