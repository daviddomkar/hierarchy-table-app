part of 'hierarchy_table_bloc.dart';

@freezed
sealed class HierarchyTableEvent with _$HierarchyTableEvent {
  const factory HierarchyTableEvent.loadRequested() = _LoadRequested;
  const factory HierarchyTableEvent.rowToggled({required List<int> path}) =
      _RowToggled;
  const factory HierarchyTableEvent.rowDeleted({required List<int> path}) =
      _RowDeleted;
}
