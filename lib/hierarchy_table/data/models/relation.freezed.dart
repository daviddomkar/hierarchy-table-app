// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Relation {

 List<Node> get records;
/// Create a copy of Relation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationCopyWith<Relation> get copyWith => _$RelationCopyWithImpl<Relation>(this as Relation, _$identity);

  /// Serializes this Relation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relation&&const DeepCollectionEquality().equals(other.records, records));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records));

@override
String toString() {
  return 'Relation(records: $records)';
}


}

/// @nodoc
abstract mixin class $RelationCopyWith<$Res>  {
  factory $RelationCopyWith(Relation value, $Res Function(Relation) _then) = _$RelationCopyWithImpl;
@useResult
$Res call({
 List<Node> records
});




}
/// @nodoc
class _$RelationCopyWithImpl<$Res>
    implements $RelationCopyWith<$Res> {
  _$RelationCopyWithImpl(this._self, this._then);

  final Relation _self;
  final $Res Function(Relation) _then;

/// Create a copy of Relation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<Node>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Relation implements Relation {
  const _Relation({required this.records});
  factory _Relation.fromJson(Map<String, dynamic> json) => _$RelationFromJson(json);

@override final  List<Node> records;

/// Create a copy of Relation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationCopyWith<_Relation> get copyWith => __$RelationCopyWithImpl<_Relation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Relation&&const DeepCollectionEquality().equals(other.records, records));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records));

@override
String toString() {
  return 'Relation(records: $records)';
}


}

/// @nodoc
abstract mixin class _$RelationCopyWith<$Res> implements $RelationCopyWith<$Res> {
  factory _$RelationCopyWith(_Relation value, $Res Function(_Relation) _then) = __$RelationCopyWithImpl;
@override @useResult
$Res call({
 List<Node> records
});




}
/// @nodoc
class __$RelationCopyWithImpl<$Res>
    implements _$RelationCopyWith<$Res> {
  __$RelationCopyWithImpl(this._self, this._then);

  final _Relation _self;
  final $Res Function(_Relation) _then;

/// Create a copy of Relation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,}) {
  return _then(_Relation(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<Node>,
  ));
}


}

// dart format on
