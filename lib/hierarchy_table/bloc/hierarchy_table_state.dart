part of 'hierarchy_table_bloc.dart';

sealed class NodeRow {
  const NodeRow();
}

class DataNodeRow extends NodeRow {
  const DataNodeRow({required this.node, required this.path});

  final Node node;
  final List<int> path;

  int get depth => path.length;
}

class HeaderNodeRow extends NodeRow {
  const HeaderNodeRow({required this.keys, required this.depth});

  final List<String> keys;
  final int depth;
}

@freezed
sealed class HierarchyTableState with _$HierarchyTableState {
  const factory HierarchyTableState.initial() = HierarchyTableInitial;
  const factory HierarchyTableState.loading() = HierarchyTableLoading;
  const factory HierarchyTableState.success({required List<NodeRow> rows}) =
      HierarchyTableSuccess;
  const factory HierarchyTableState.failure({required String error}) =
      HierarchyTableFailure;
}
