part of 'audit_tables_cubit.dart';

abstract class AuditTablesState extends Equatable {
  const AuditTablesState();

  @override
  List<Object> get props => [];
}

class AuditTablesInitial extends AuditTablesState {}

class AuditTablesLoading extends AuditTablesState {}

class AuditTablesLoaded extends AuditTablesState {
  final List<List<dynamic>> dataToDisplay;

  AuditTablesLoaded({required this.dataToDisplay});

  @override
  List<Object> get props => [dataToDisplay];
}

class AuditTablesError extends AuditTablesState {
  final String errorMsg;

  AuditTablesError({required this.errorMsg});

  @override
  List<Object> get props => [errorMsg];
}
