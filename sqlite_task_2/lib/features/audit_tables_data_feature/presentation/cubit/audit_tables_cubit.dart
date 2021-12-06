import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/get_all_json_data_into_db.dart';
import '../../domain/usecases/get_all_tables_row_count.dart';

part 'audit_tables_state.dart';

class AuditTablesCubit extends Cubit<AuditTablesState> {
  final GetAllJsonDataIntoDbUseCase getAllJsonDataIntoDbUseCase;
  final GetAllTablesRowCountDbUseCase getAllTablesRowCountDbUseCase;

  AuditTablesCubit({
    required this.getAllJsonDataIntoDbUseCase,
    required this.getAllTablesRowCountDbUseCase,
  }) : super(AuditTablesInitial());

  getCountDataToDisplay() async {
    emit(AuditTablesLoading());

    try {
      var result = await getAllTablesRowCountDbUseCase.call();
      if (result[0][1] == 0) {
        await getAllJsonDataIntoDbUseCase.call();
        result = await getAllTablesRowCountDbUseCase.call();
      }
      emit(AuditTablesLoaded(dataToDisplay: result));
    } catch (e) {
      emit(AuditTablesError(errorMsg: "Error while fetching data"));
    }
  }
}
