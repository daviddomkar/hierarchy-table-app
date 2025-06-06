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
    on<_RowToggled>(_onRowToggled);
    on<_RowDeleted>(_onRowDeleted);
  }

  final NodeRepository _nodeRepository;

  // Internal state, prevents deep state comparison, fine as long as we
  // do not need bloc replayability
  final List<Node> _nodes = [];
  final Set<String> _expanded = {};

  Future<void> _onLoadRequested(
    _LoadRequested event,
    Emitter<HierarchyTableState> emit,
  ) async {
    emit(const HierarchyTableState.loading());
    try {
      final nodes = await _nodeRepository.getNodes();

      _expanded.clear();
      _nodes
        ..clear()
        ..addAll(nodes);

      emit(HierarchyTableState.success(rows: _constructRows(nodes)));
    } catch (e) {
      emit(HierarchyTableState.failure(error: e.toString()));
      rethrow;
    }
  }

  void _onRowToggled(_RowToggled event, Emitter<HierarchyTableState> emit) {
    final key = event.path.join('.');

    if (_expanded.contains(key)) {
      _expanded.removeWhere(
        (element) => element == key || element.startsWith('$key.'),
      );
    } else {
      _expanded.add(key);
    }

    emit(HierarchyTableState.success(rows: _constructRows(_nodes)));
  }

  void _onRowDeleted(_RowDeleted event, Emitter<HierarchyTableState> emit) {
    final key = event.path.join('.');

    // Remove node
    _removeNode(_nodes, event.path);

    // Remove any expansions
    _expanded.removeWhere(
      (element) => element == key || element.startsWith('$key.'),
    );

    emit(HierarchyTableState.success(rows: _constructRows(_nodes)));
  }

  /// Removes node from list of nodes by its path
  bool _removeNode(List<Node> nodes, List<int> path) {
    if (path.isEmpty) return false;

    final index = path.first;

    if (path.length == 1) {
      nodes.removeAt(index);
      return true;
    }

    final subPath = path.sublist(1);
    final node = nodes[index];

    for (final relation in node.children.values) {
      return _removeNode(relation.records, subPath);
    }

    return false;
  }

  /// Constructs rows from nodes
  List<NodeRow> _constructRows(List<Node> nodes) {
    final rows = <NodeRow>[_constructHeaderRow(nodes, 0)];

    void processNode(Node node, List<int> path) {
      // Add node row to rows
      rows.add(DataNodeRow(node: node, path: path));

      // If node is not expanded, do not process its relations
      if (!_expanded.contains(path.join('.'))) {
        return;
      }

      // Process each relation
      for (final relation in node.children.values) {
        // Add relation header row to rows
        rows.add(_constructHeaderRow(relation.records, path.length + 1));

        // Process each record in relation
        for (var i = 0; i < relation.records.length; i++) {
          processNode(relation.records[i], path + [i]);
        }
      }
    }

    // We want to process each root node
    for (var i = 0; i < nodes.length; i++) {
      processNode(nodes[i], [i]);
    }

    return rows;
  }

  /// Takes list of nodes and returns header row based on the data keys
  HeaderNodeRow _constructHeaderRow(List<Node> nodes, int depth) {
    final cols = <String>{};
    for (final node in nodes) {
      cols.addAll(node.data.keys);
    }

    return HeaderNodeRow(keys: cols.toList(), depth: depth);
  }
}
