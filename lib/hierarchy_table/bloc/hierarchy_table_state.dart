part of 'hierarchy_table_bloc.dart';

@freezed
sealed class NodeRow with _$NodeRow {
  const factory NodeRow.header({
    required String relation,
    required List<String> keys,
  }) = HeaderNodeRow;

  const factory NodeRow.data({
    required Node node,
    @Default([]) List<NodeRow> children,
  }) = DataNodeRow;
}

@freezed
sealed class HierarchyTableState with _$HierarchyTableState {
  const factory HierarchyTableState.initial() = HierarchyTableInitial;
  const factory HierarchyTableState.loading() = HierarchyTableLoading;
  const factory HierarchyTableState.success({
    required List<Node> nodes,
    required List<NodeRow> rows,
    required Set<String> expanded,
  }) = HierarchyTableSuccess;
  const factory HierarchyTableState.failure({required String error}) =
      HierarchyTableFailure;
}
