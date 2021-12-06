import 'package:get_it/get_it.dart';
import 'features/audit_tables_data_feature/data/datasources/audit_tables_data_source.dart';
import 'features/audit_tables_data_feature/data/datasources/moor_database/audit_tables_database.dart';
import 'features/audit_tables_data_feature/data/repositories/audit_tables_repository_impl.dart';
import 'features/audit_tables_data_feature/domain/repositories/audit_tables_repository.dart';
import 'features/audit_tables_data_feature/domain/usecases/get_all_json_data_into_db.dart';
import 'features/audit_tables_data_feature/domain/usecases/get_all_tables_row_count.dart';
import 'features/audit_tables_data_feature/presentation/cubit/audit_tables_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // cubit
  sl.registerFactory<AuditTablesCubit>(
    () => AuditTablesCubit(
      getAllJsonDataIntoDbUseCase: sl.call(),
      getAllTablesRowCountDbUseCase: sl.call(),
    ),
  );

  // database
  sl.registerLazySingleton<AuditDatabase>(() => AuditDatabase());

  // usecase
  sl.registerLazySingleton<GetAllJsonDataIntoDbUseCase>(
      () => GetAllJsonDataIntoDbUseCase(sl.call()));

  sl.registerLazySingleton<GetAllTablesRowCountDbUseCase>(
      () => GetAllTablesRowCountDbUseCase(sl.call()));

  // repository
  sl.registerLazySingleton<AuditTablesRepository>(
      () => AuditTablesRepositoryImpl(sl.call()));

  // datacase
  sl.registerLazySingleton<AuditTableDataSource>(
      () => AuditTableDataSourceImpl(sl.call()));
}
