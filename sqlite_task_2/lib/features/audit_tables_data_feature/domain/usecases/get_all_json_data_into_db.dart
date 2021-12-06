import '../repositories/audit_tables_repository.dart';

class GetAllJsonDataIntoDbUseCase {
  final AuditTablesRepository repository;

  GetAllJsonDataIntoDbUseCase(this.repository);

  Future<void> call() async {
    return await repository.addAllJsonDataIntoDb();
  }
}
