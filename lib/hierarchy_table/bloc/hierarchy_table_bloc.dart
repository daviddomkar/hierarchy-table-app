import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/models/node.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/repositories/node_repository.dart';

part 'hierarchy_table_bloc.freezed.dart';
part 'hierarchy_table_event.dart';
part 'hierarchy_table_state.dart';

class HierarchyTableBloc
    extends Bloc<HierarchyTableEvent, HierarchyTableState> {
  HierarchyTableBloc({required NodeRepository nodeRepository})
    : _nodeRepository = nodeRepository,
      super(const HierarchyTableState.initial()) {
    on<_LoadRequested>(_onLoadRequested, transformer: droppable());
  }

  final NodeRepository _nodeRepository;

  Future<void> _onLoadRequested(
    _LoadRequested event,
    Emitter<HierarchyTableState> emit,
  ) async {
    emit(const HierarchyTableState.loading());
    try {
      final nodes = await _nodeRepository.getNodes();

      emit(
        HierarchyTableState.success(
          nodes: nodes,
          rows: _constructRows(nodes),
          expanded: {},
        ),
      );
    } catch (e) {
      emit(HierarchyTableState.failure(error: e.toString()));
      rethrow;
    }
  }

  Future<void> _onRowDeleted(
    _RowDeleted event,
    Emitter<HierarchyTableState> emit,
  ) async {}

  List<NodeRow> _constructRows(List<Node> nodes) {
    final rows = <NodeRow>[_constructHeaderRow('_root', nodes)];

    for (final node in nodes) {
      rows.add(_constructRow(node));
    }

    return rows;
  }

  NodeRow _constructRow(Node node) {
    final children = <NodeRow>[];

    for (final entry in node.children.entries) {
      children.add(_constructHeaderRow(entry.key, entry.value.records));

      for (final node in entry.value.records) {
        children.add(_constructRow(node));
      }
    }

    return NodeRow.data(node: node, children: children);
  }

  HeaderNodeRow _constructHeaderRow(String relation, List<Node> nodes) {
    final cols = <String>{};
    for (final node in nodes) {
      cols.addAll(node.data.keys);
    }

    return HeaderNodeRow(relation: relation, keys: cols.toList());
  }
}
