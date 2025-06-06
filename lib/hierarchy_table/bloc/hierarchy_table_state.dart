part of 'hierarchy_table_bloc.dart';

@freezed
sealed class HierarchyTableState with _$HierarchyTableState {
  const factory HierarchyTableState.initial() = HierarchyTableInitial;
  const factory HierarchyTableState.loading() = HierarchyTableLoading;
  const factory HierarchyTableState.success({required List<Node> nodes}) =
      HierarchyTableSuccess;
  const factory HierarchyTableState.failure({required String error}) =
      HierarchyTableFailure;
}
