import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hierarchy_table_app/hierarchy_table/bloc/hierarchy_table_bloc.dart';

class HierarchyTableView extends StatelessWidget {
  const HierarchyTableView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HierarchyTableBloc>().state;

    return Scaffold(
      body: switch (state) {
        HierarchyTableInitial() => const SizedBox.shrink(),
        HierarchyTableLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        HierarchyTableSuccess(:final nodes) => Center(
          child: Text('Success: $nodes'),
        ),
        HierarchyTableFailure(:final String error) => Center(
          child: Text('Failure: $error'),
        ),
      },
    );
  }
}
