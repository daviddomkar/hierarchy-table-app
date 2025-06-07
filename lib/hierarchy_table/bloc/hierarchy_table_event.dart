part of 'hierarchy_table_bloc.dart';

@freezed
sealed class HierarchyTableEvent with _$HierarchyTableEvent {
  const factory HierarchyTableEvent.loadRequested() = _LoadRequested;
  const factory HierarchyTableEvent.rowDeleted({required NodeRow node}) =
      _RowDeleted;
}
