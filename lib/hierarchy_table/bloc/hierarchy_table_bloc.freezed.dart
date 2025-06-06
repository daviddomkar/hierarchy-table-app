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
  const HierarchyTableSuccess({required final  List<NodeRow> rows}): _rows = rows;
  

 final  List<NodeRow> _rows;
 List<NodeRow> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of HierarchyTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchyTableSuccessCopyWith<HierarchyTableSuccess> get copyWith => _$HierarchyTableSuccessCopyWithImpl<HierarchyTableSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableSuccess&&const DeepCollectionEquality().equals(other._rows, _rows));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'HierarchyTableState.success(rows: $rows)';
}


}

/// @nodoc
abstract mixin class $HierarchyTableSuccessCopyWith<$Res> implements $HierarchyTableStateCopyWith<$Res> {
  factory $HierarchyTableSuccessCopyWith(HierarchyTableSuccess value, $Res Function(HierarchyTableSuccess) _then) = _$HierarchyTableSuccessCopyWithImpl;
@useResult
$Res call({
 List<NodeRow> rows
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
@pragma('vm:prefer-inline') $Res call({Object? rows = null,}) {
  return _then(HierarchyTableSuccess(
rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<NodeRow>,
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
