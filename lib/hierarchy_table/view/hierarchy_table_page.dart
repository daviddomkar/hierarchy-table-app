import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hierarchy_table_app/hierarchy_table/bloc/hierarchy_table_bloc.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/repositories/node_repository.dart';
import 'package:hierarchy_table_app/hierarchy_table/view/hierarchy_table_view.dart';

class HierarchyTablePage extends StatelessWidget {
  const HierarchyTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return HierarchyTableBloc(
          nodeRepository: context.read<NodeRepository>(),
        )..add(const HierarchyTableEvent.loadRequested());
      },
      child: const HierarchyTableView(),
    );
  }
}
