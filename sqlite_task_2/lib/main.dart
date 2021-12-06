import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/audit_tables_data_feature/presentation/cubit/audit_tables_cubit.dart';
import 'features/audit_tables_data_feature/presentation/pages/home_page.dart';

import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<AuditTablesCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SQLite Task 2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
