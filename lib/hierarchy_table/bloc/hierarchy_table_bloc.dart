import 'package:bloc/bloc.dart';
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
    on<_LoadRequested>(_onLoadRequested);
  }

  final NodeRepository _nodeRepository;

  Future<void> _onLoadRequested(
    _LoadRequested event,
    Emitter<HierarchyTableState> emit,
  ) async {
    emit(const HierarchyTableState.loading());
    try {
      final nodes = await _nodeRepository.getNodes();
      emit(HierarchyTableState.success(nodes: nodes));
    } catch (e) {
      emit(HierarchyTableState.failure(error: e.toString()));
      rethrow;
    }
  }
}
