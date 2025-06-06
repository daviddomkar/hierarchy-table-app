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
  const HierarchyTableSuccess({required final  List<Node> nodes}): _nodes = nodes;
  

 final  List<Node> _nodes;
 List<Node> get nodes {
  if (_nodes is EqualUnmodifiableListView) return _nodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nodes);
}


/// Create a copy of HierarchyTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HierarchyTableSuccessCopyWith<HierarchyTableSuccess> get copyWith => _$HierarchyTableSuccessCopyWithImpl<HierarchyTableSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HierarchyTableSuccess&&const DeepCollectionEquality().equals(other._nodes, _nodes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_nodes));

@override
String toString() {
  return 'HierarchyTableState.success(nodes: $nodes)';
}


}

/// @nodoc
abstract mixin class $HierarchyTableSuccessCopyWith<$Res> implements $HierarchyTableStateCopyWith<$Res> {
  factory $HierarchyTableSuccessCopyWith(HierarchyTableSuccess value, $Res Function(HierarchyTableSuccess) _then) = _$HierarchyTableSuccessCopyWithImpl;
@useResult
$Res call({
 List<Node> nodes
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
@pragma('vm:prefer-inline') $Res call({Object? nodes = null,}) {
  return _then(HierarchyTableSuccess(
nodes: null == nodes ? _self._nodes : nodes // ignore: cast_nullable_to_non_nullable
as List<Node>,
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
