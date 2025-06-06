import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hierarchy_table_app/hierarchy_table/bloc/hierarchy_table_bloc.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/models/node.dart';

const _rowHeight = 48.0;
const _depthIndent = 48.0;

class HierarchyTable extends StatefulWidget {
  const HierarchyTable({required this.rows, super.key});

  final List<NodeRow> rows;

  @override
  State<HierarchyTable> createState() => _HierarchyTableState();
}

class _HierarchyTableState extends State<HierarchyTable> {
  final _columnWidthCache = <String, double>{};

  double _getColumnWidth(BuildContext context, String key) {
    return _columnWidthCache[key] ??= _measureText(context, key) + 64;
  }

  double _measureText(BuildContext context, String text) {
    final painter = TextPainter(
      text: TextSpan(text: text, style: Theme.of(context).textTheme.bodyMedium),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return painter.width;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.rows.length,
      itemExtent: _rowHeight,
      itemBuilder: (context, index) {
        final row = widget.rows[index];
        return switch (row) {
          HeaderNodeRow(:final keys, :final depth) => _HeaderRow(
            key: ValueKey('h_${row.depth}_${row.relation}'),
            keys: keys,
            depth: depth,
            requestColumnWidth: _getColumnWidth,
          ),
          DataNodeRow(:final node, :final path) => _DataRow(
            key: ValueKey('d_${row.path.join('.')}'),
            node: node,
            alternate: index.isEven,
            path: path,
            requestColumnWidth: _getColumnWidth,
          ),
        };
      },
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({
    required this.keys,
    required this.depth,
    required this.requestColumnWidth,
    super.key,
  });

  final List<String> keys;
  final int depth;
  final double Function(BuildContext, String) requestColumnWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.only(left: depth * _depthIndent + _depthIndent),
      child: Row(
        children: [
          for (final key in keys)
            _Cell(
              width: requestColumnWidth(context, key),
              child: Text(
                key,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _DataRow extends StatelessWidget {
  const _DataRow({
    required this.node,
    required this.alternate,
    required this.path,
    required this.requestColumnWidth,
    super.key,
  });

  final Node node;
  final bool alternate;
  final List<int> path;
  final double Function(BuildContext, String) requestColumnWidth;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HierarchyTableBloc>();
    final expanded =
        bloc.state is HierarchyTableSuccess &&
        (bloc.state as HierarchyTableSuccess).expanded.contains(path.join('.'));

    return Container(
      color: alternate
          ? Theme.of(context).colorScheme.surfaceTint
          : Theme.of(context).colorScheme.surface,
      padding: EdgeInsets.only(left: (path.length - 1) * _depthIndent),
      child: Row(
        children: [
          if (node.children.isNotEmpty)
            _Cell(
              width: 48,
              child: IconButton(
                onPressed: () {
                  context.read<HierarchyTableBloc>().add(
                    HierarchyTableEvent.rowToggled(path: path),
                  );
                },
                icon: RotatedBox(
                  quarterTurns: expanded ? 1 : 0,
                  child: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          if (node.children.isEmpty) const SizedBox.square(dimension: 48),
          for (final entry in node.data.entries)
            _Cell(
              width: requestColumnWidth(context, entry.key),
              child: Text(
                entry.value.toString(),
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          const Spacer(),
          _Cell(
            width: 48,
            child: IconButton(
              onPressed: () {
                context.read<HierarchyTableBloc>().add(
                  HierarchyTableEvent.rowDeleted(path: path),
                );
              },
              icon: const Icon(Icons.delete, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class _Cell extends StatelessWidget {
  const _Cell({required this.width, required this.child});

  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      alignment: Alignment.center,
      child: child,
    );
  }
}
