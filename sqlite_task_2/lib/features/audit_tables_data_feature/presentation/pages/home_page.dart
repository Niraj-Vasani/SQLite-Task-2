import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/audit_tables_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text("Audit Table Info"),
          centerTitle: true,
        ),
        body: BlocBuilder<AuditTablesCubit, AuditTablesState>(
          builder: (context, state) {
            if (state is AuditTablesInitial) {
              BlocProvider.of<AuditTablesCubit>(context)
                  .getCountDataToDisplay();
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              );
            } else if (state is AuditTablesLoading) {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              );
            } else if (state is AuditTablesError) {
              return Center(
                child: Text("Failed to load the data"),
              );
            } else if (state is AuditTablesLoaded) {
              return _buildAuditTableInfoListView(state.dataToDisplay, context);
            } else {
              return Center(child: Text("Something went wrong!"));
            }
          },
        ),
      ),
    );
  }

  Widget _buildAuditTableInfoListView(
      List<List<dynamic>> dataToDisplay, BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: dataToDisplay.length,
            itemBuilder: (_, index) {
              return Container(
                margin:
                    EdgeInsets.only(left: 5, right: 5, top: 2.5, bottom: 2.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                  ),
                  child: ListTile(
                    title: Text(
                      "Table Name: ${dataToDisplay[index][0]}",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      "No. of rows: ${dataToDisplay[index][1].toString()}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
