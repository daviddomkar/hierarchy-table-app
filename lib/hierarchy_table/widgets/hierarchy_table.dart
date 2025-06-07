import 'package:flutter/material.dart';
import 'package:hierarchy_table_app/hierarchy_table/bloc/hierarchy_table_bloc.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

const _rowHeight = 48.0;
const _indentation = 48.0;
const _columnWidth = 150.0;

class HierarchyTable extends StatefulWidget {
  const HierarchyTable({required this.rows, super.key});

  final List<NodeRow> rows;

  @override
  State<HierarchyTable> createState() => _HierarchyTableState();
}

class _HierarchyTableState extends State<HierarchyTable> {
  late final List<TreeViewNode<NodeRow>> _tree;

  @override
  void initState() {
    super.initState();
    _tree = _constructTree(widget.rows);
  }

  List<TreeViewNode<NodeRow>> _constructTree(List<NodeRow> rows) {
    final tree = <TreeViewNode<NodeRow>>[];

    for (final row in rows) {
      tree.add(_constructTreeNode(row));
    }

    return tree;
  }

  TreeViewNode<NodeRow> _constructTreeNode(NodeRow row) {
    return switch (row) {
      HeaderNodeRow() => TreeViewNode(row),
      DataNodeRow() => TreeViewNode(
        row,
        children: row.children.map(_constructTreeNode).toList(),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return TreeView<NodeRow>(
      tree: _tree,
      treeRowBuilder: (node) {
        return TreeRow(
          extent: const FixedSpanExtent(_rowHeight),
          backgroundDecoration: SpanDecoration(
            color: switch (node.content) {
              HeaderNodeRow() => Theme.of(context).colorScheme.primary,
              DataNodeRow() => Theme.of(context).colorScheme.surface,
            },
          ),
        );
      },
      treeNodeBuilder: _buildTreeNode,
      indentation: TreeViewIndentationType.none,
    );
  }

  Widget _buildTreeNode(
    BuildContext context,
    TreeViewNode<NodeRow> node,
    AnimationStyle toggleAnimationStyle,
  ) {
    return switch (node.content) {
      HeaderNodeRow(:final keys) => _HeaderRow(keys: keys),
      DataNodeRow() => _DataRow(
        node: node,
        row: node.content as DataNodeRow,
        toggleAnimationStyle: toggleAnimationStyle,
      ),
    };
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({required this.keys});

  final List<String> keys;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox.square(dimension: _indentation),
        for (final key in keys)
          _Cell(
            width: _columnWidth,
            child: Text(key, overflow: TextOverflow.ellipsis),
          ),
        const _Cell(width: _columnWidth, child: Text('Actions')),
      ],
    );
  }
}

class _DataRow extends StatelessWidget {
  const _DataRow({
    required this.node,
    required this.row,
    required this.toggleAnimationStyle,
  });

  final TreeViewNode<NodeRow> node;
  final DataNodeRow row;
  final AnimationStyle toggleAnimationStyle;

  @override
  Widget build(BuildContext context) {
    final animationDuration =
        toggleAnimationStyle.duration ?? TreeView.defaultAnimationDuration;
    final animationCurve =
        toggleAnimationStyle.curve ?? TreeView.defaultAnimationCurve;

    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          if (node.children.isNotEmpty)
            SizedBox.square(
              dimension: _indentation,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: AnimatedRotation(
                  turns: node.isExpanded ? 0.25 : 0.0,
                  duration: animationDuration,
                  curve: animationCurve,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      TreeViewController.of(context).toggleNode(node);
                    },
                    icon: const Icon(Icons.chevron_right),
                  ),
                ),
              ),
            ),
          if (node.children.isEmpty)
            const SizedBox.square(dimension: _indentation),
          for (final value in row.node.data.values)
            _Cell(
              width: _columnWidth,
              child: Text(value.toString(), overflow: TextOverflow.ellipsis),
            ),
          _Cell(
            width: _columnWidth,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                // TODO: Deletion
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
