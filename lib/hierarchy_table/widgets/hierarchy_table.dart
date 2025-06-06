import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hierarchy_table_app/hierarchy_table/bloc/hierarchy_table_bloc.dart';

class HierarchyTable extends StatelessWidget {
  const HierarchyTable({required this.rows, super.key});

  final List<NodeRow> rows;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rows.length,
      itemBuilder: (context, index) {
        final row = rows[index];
        return switch (row) {
          DataNodeRow(:final node, :final depth) => GestureDetector(
            onTap: () => context.read<HierarchyTableBloc>().add(
              HierarchyTableEvent.rowToggled(path: row.path),
            ),
            child: Text('Data: Depth: $depth\n${node.data.toString()}'),
          ),
          HeaderNodeRow(:final keys, :final depth) => Text(
            'Header: Depth: $depth\n${keys.toString()}',
          ),
        };
      },
    );
  }
}
