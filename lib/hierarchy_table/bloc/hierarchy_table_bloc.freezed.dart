// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hierarchy_table_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HierarchyTableEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HierarchyTableEvent()';
}


}

/// @nodoc
class $HierarchyTableEventCopyWith<$Res>  {
$HierarchyTableEventCopyWith(HierarchyTableEvent _, $Res Function(HierarchyTableEvent) __);
}


/// @nodoc


class _LoadRequested implements HierarchyTableEvent {
  const _LoadRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HierarchyTableEvent.loadRequested()';
}


}




/// @nodoc


class _RowToggled implements HierarchyTableEvent {
  const _RowToggled({required final  List<int> path}): _path = path;
  

 final  List<int> _path;
 List<int> get path {
  if (_path is EqualUnmodifiableListView) return _path;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_path);
}


/// Create a copy of HierarchyTableEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RowToggledCopyWith<_RowToggled> get copyWith => __$RowToggledCopyWithImpl<_RowToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RowToggled&&const DeepCollectionEquality().equals(other._path, _path));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_path));

@override
String toString() {
  return 'HierarchyTableEvent.rowToggled(path: $path)';
}


}

/// @nodoc
abstract mixin class _$RowToggledCopyWith<$Res> implements $HierarchyTableEventCopyWith<$Res> {
  factory _$RowToggledCopyWith(_RowToggled value, $Res Function(_RowToggled) _then) = __$RowToggledCopyWithImpl;
@useResult
$Res call({
 List<int> path
});




}
/// @nodoc
class __$RowToggledCopyWithImpl<$Res>
    implements _$RowToggledCopyWith<$Res> {
  __$RowToggledCopyWithImpl(this._self, this._then);

  final _RowToggled _self;
  final $Res Function(_RowToggled) _then;

/// Create a copy of HierarchyTableEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(_RowToggled(
path: null == path ? _self._path : path // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _RowDeleted implements HierarchyTableEvent {
  const _RowDeleted({required final  List<int> path}): _path = path;
  

 final  List<int> _path;
 List<int> get path {
  if (_path is EqualUnmodifiableListView) return _path;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_path);
}


/// Create a copy of HierarchyTableEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RowDeletedCopyWith<_RowDeleted> get copyWith => __$RowDeletedCopyWithImpl<_RowDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RowDeleted&&const DeepCollectionEquality().equals(other._path, _path));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_path));

@override
String toString() {
  return 'HierarchyTableEvent.rowDeleted(path: $path)';
}


}

/// @nodoc
abstract mixin class _$RowDeletedCopyWith<$Res> implements $HierarchyTableEventCopyWith<$Res> {
  factory _$RowDeletedCopyWith(_RowDeleted value, $Res Function(_RowDeleted) _then) = __$RowDeletedCopyWithImpl;
@useResult
$Res call({
 List<int> path
});




}
/// @nodoc
class __$RowDeletedCopyWithImpl<$Res>
    implements _$RowDeletedCopyWith<$Res> {
  __$RowDeletedCopyWithImpl(this._self, this._then);

  final _RowDeleted _self;
  final $Res Function(_RowDeleted) _then;

/// Create a copy of HierarchyTableEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(_RowDeleted(
path: null == path ? _self._path : path // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc
mixin _$NodeRow {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NodeRow);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NodeRow()';
}


}

/// @nodoc
class $NodeRowCopyWith<$Res>  {
$NodeRowCopyWith(NodeRow _, $Res Function(NodeRow) __);
}


/// @nodoc


class HeaderNodeRow implements NodeRow {
  const HeaderNodeRow({required this.relation, required final  List<String> keys, required this.depth}): _keys = keys;
  

 final  String relation;
 final  List<String> _keys;
 List<String> get keys {
  if (_keys is EqualUnmodifiableListView) return _keys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keys);
}

 final  int depth;

/// Create a copy of NodeRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderNodeRowCopyWith<HeaderNodeRow> get copyWith => _$HeaderNodeRowCopyWithImpl<HeaderNodeRow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaderNodeRow&&(identical(other.relation, relation) || other.relation == relation)&&const DeepCollectionEquality().equals(other._keys, _keys)&&(identical(other.depth, depth) || other.depth == depth));
}


@override
int get hashCode => Object.hash(runtimeType,relation,const DeepCollectionEquality().hash(_keys),depth);

@override
String toString() {
  return 'NodeRow.header(relation: $relation, keys: $keys, depth: $depth)';
}


}

/// @nodoc
abstract mixin class $HeaderNodeRowCopyWith<$Res> implements $NodeRowCopyWith<$Res> {
  factory $HeaderNodeRowCopyWith(HeaderNodeRow value, $Res Function(HeaderNodeRow) _then) = _$HeaderNodeRowCopyWithImpl;
@useResult
$Res call({
 String relation, List<String> keys, int depth
});




}
/// @nodoc
class _$HeaderNodeRowCopyWithImpl<$Res>
    implements $HeaderNodeRowCopyWith<$Res> {
  _$HeaderNodeRowCopyWithImpl(this._self, this._then);

  final HeaderNodeRow _self;
  final $Res Function(HeaderNodeRow) _then;

/// Create a copy of NodeRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? relation = null,Object? keys = null,Object? depth = null,}) {
  return _then(HeaderNodeRow(
relation: null == relation ? _self.relation : relation // ignore: cast_nullable_to_non_nullable
as String,keys: null == keys ? _self._keys : keys // ignore: cast_nullable_to_non_nullable
as List<String>,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DataNodeRow implements NodeRow {
  const DataNodeRow({required this.node, required final  List<int> path}): _path = path;
  

 final  Node node;
 final  List<int> _path;
 List<int> get path {
  if (_path is EqualUnmodifiableListView) return _path;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_path);
}


/// Create a copy of NodeRow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataNodeRowCopyWith<DataNodeRow> get copyWith => _$DataNodeRowCopyWithImpl<DataNodeRow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataNodeRow&&(identical(other.node, node) || other.node == node)&&const DeepCollectionEquality().equals(other._path, _path));
}


@override
int get hashCode => Object.hash(runtimeType,node,const DeepCollectionEquality().hash(_path));

@override
String toString() {
  return 'NodeRow.data(node: $node, path: $path)';
}


}

/// @nodoc
abstract mixin class $DataNodeRowCopyWith<$Res> implements $NodeRowCopyWith<$Res> {
  factory $DataNodeRowCopyWith(DataNodeRow value, $Res Function(DataNodeRow) _then) = _$DataNodeRowCopyWithImpl;
@useResult
$Res call({
 Node node, List<int> path
});


$NodeCopyWith<$Res> get node;

}
/// @nodoc
class _$DataNodeRowCopyWithImpl<$Res>
    implements $DataNodeRowCopyWith<$Res> {
  _$DataNodeRowCopyWithImpl(this._self, this._then);

  final DataNodeRow _self;
  final $Res Function(DataNodeRow) _then;

/// Create a copy of NodeRow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? node = null,Object? path = null,}) {
  return _then(DataNodeRow(
node: null == node ? _self.node : node // ignore: cast_nullable_to_non_nullable
as Node,path: null == path ? _self._path : path // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

/// Create a copy of NodeRow
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NodeCopyWith<$Res> get node {
  
  return $NodeCopyWith<$Res>(_self.node, (value) {
    return _then(_self.copyWith(node: value));
  });
}
}

/// @nodoc
mixin _$HierarchyTableState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HierarchyTableState()';
}


}

/// @nodoc
class $HierarchyTableStateCopyWith<$Res>  {
$HierarchyTableStateCopyWith(HierarchyTableState _, $Res Function(HierarchyTableState) __);
}


/// @nodoc


class HierarchyTableInitial implements HierarchyTableState {
  const HierarchyTableInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HierarchyTableState.initial()';
}


}




/// @nodoc


class HierarchyTableLoading implements HierarchyTableState {
  const HierarchyTableLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HierarchyTableState.loading()';
}


}




/// @nodoc


class HierarchyTableSuccess implements HierarchyTableState {
  const HierarchyTableSuccess({required final  List<NodeRow> rows, required final  Set<String> expanded}): _rows = rows,_expanded = expanded;
  

 final  List<NodeRow> _rows;
 List<NodeRow> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}

 final  Set<String> _expanded;
 Set<String> get expanded {
  if (_expanded is EqualUnmodifiableSetView) return _expanded;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_expanded);
}


/// Create a copy of HierarchyTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchyTableSuccessCopyWith<HierarchyTableSuccess> get copyWith => _$HierarchyTableSuccessCopyWithImpl<HierarchyTableSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableSuccess&&const DeepCollectionEquality().equals(other._rows, _rows)&&const DeepCollectionEquality().equals(other._expanded, _expanded));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rows),const DeepCollectionEquality().hash(_expanded));

@override
String toString() {
  return 'HierarchyTableState.success(rows: $rows, expanded: $expanded)';
}


}

/// @nodoc
abstract mixin class $HierarchyTableSuccessCopyWith<$Res> implements $HierarchyTableStateCopyWith<$Res> {
  factory $HierarchyTableSuccessCopyWith(HierarchyTableSuccess value, $Res Function(HierarchyTableSuccess) _then) = _$HierarchyTableSuccessCopyWithImpl;
@useResult
$Res call({
 List<NodeRow> rows, Set<String> expanded
});




}
/// @nodoc
class _$HierarchyTableSuccessCopyWithImpl<$Res>
    implements $HierarchyTableSuccessCopyWith<$Res> {
  _$HierarchyTableSuccessCopyWithImpl(this._self, this._then);

  final HierarchyTableSuccess _self;
  final $Res Function(HierarchyTableSuccess) _then;

/// Create a copy of HierarchyTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rows = null,Object? expanded = null,}) {
  return _then(HierarchyTableSuccess(
rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<NodeRow>,expanded: null == expanded ? _self._expanded : expanded // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class HierarchyTableFailure implements HierarchyTableState {
  const HierarchyTableFailure({required this.error});
  

 final  String error;

/// Create a copy of HierarchyTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchyTableFailureCopyWith<HierarchyTableFailure> get copyWith => _$HierarchyTableFailureCopyWithImpl<HierarchyTableFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HierarchyTableState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $HierarchyTableFailureCopyWith<$Res> implements $HierarchyTableStateCopyWith<$Res> {
  factory $HierarchyTableFailureCopyWith(HierarchyTableFailure value, $Res Function(HierarchyTableFailure) _then) = _$HierarchyTableFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$HierarchyTableFailureCopyWithImpl<$Res>
    implements $HierarchyTableFailureCopyWith<$Res> {
  _$HierarchyTableFailureCopyWithImpl(this._self, this._then);

  final HierarchyTableFailure _self;
  final $Res Function(HierarchyTableFailure) _then;

/// Create a copy of HierarchyTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HierarchyTableFailure(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
