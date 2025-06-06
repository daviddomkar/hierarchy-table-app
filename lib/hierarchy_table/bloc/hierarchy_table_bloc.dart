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

  Future<void> _onLoadRequested(
    _LoadRequested event,
    Emitter<HierarchyTableState> emit,
  ) async {
    emit(const HierarchyTableState.loading());
    try {
      final nodes = await _nodeRepository.getNodes();

      _nodes
        ..clear()
        ..addAll(nodes);

      emit(
        HierarchyTableState.success(
          rows: _constructRows(nodes, {}),
          expanded: {},
        ),
      );
    } catch (e) {
      emit(HierarchyTableState.failure(error: e.toString()));
      rethrow;
    }
  }

  void _onRowToggled(_RowToggled event, Emitter<HierarchyTableState> emit) {
    if (state case HierarchyTableSuccess(:final expanded)) {
      final newExpanded = Set<String>.from(expanded);

      final key = event.path.join('.');

      if (expanded.contains(key)) {
        newExpanded.removeWhere(
          (element) => element == key || element.startsWith('$key.'),
        );
      } else {
        newExpanded.add(key);
      }

      emit(
        HierarchyTableState.success(
          rows: _constructRows(_nodes, newExpanded),
          expanded: newExpanded,
        ),
      );
    }
  }

  void _onRowDeleted(_RowDeleted event, Emitter<HierarchyTableState> emit) {
    if (state case HierarchyTableSuccess(:final expanded)) {
      final key = event.path.join('.');

      // Remove node
      _removeNode(_nodes, event.path);

      // Remove any expansions
      final newExpanded = Set<String>.from(expanded)
        ..removeWhere(
          (element) => element == key || element.startsWith('$key.'),
        );

      emit(
        HierarchyTableState.success(
          rows: _constructRows(_nodes, newExpanded),
          expanded: newExpanded,
        ),
      );
    }
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

    for (final entry in node.children.entries) {
      if (_removeNode(entry.value.records, subPath)) {
        if (entry.value.records.isEmpty) {
          node.children.remove(entry.key);
        }

        return true;
      }
    }

    return false;
  }

  /// Constructs rows from nodes
  List<NodeRow> _constructRows(List<Node> nodes, Set<String> expanded) {
    final rows = <NodeRow>[_constructHeaderRow('root', nodes, 0)];

    void processNode(Node node, List<int> path) {
      // Add node row to rows
      rows.add(DataNodeRow(node: node, path: path));

      // If node is not expanded, do not process its relations
      if (!expanded.contains(path.join('.'))) {
        return;
      }

      // Process each relation
      for (final entry in node.children.entries) {
        // Add relation header row to rows
        rows.add(
          _constructHeaderRow(entry.key, entry.value.records, path.length),
        );

        // Process each record in relation
        for (var i = 0; i < entry.value.records.length; i++) {
          processNode(entry.value.records[i], path + [i]);
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
  HeaderNodeRow _constructHeaderRow(
    String relation,
    List<Node> nodes,
    int depth,
  ) {
    final cols = <String>{};
    for (final node in nodes) {
      cols.addAll(node.data.keys);
    }

    return HeaderNodeRow(relation: relation, keys: cols.toList(), depth: depth);
  }
}
