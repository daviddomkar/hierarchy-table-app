// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Node _$NodeFromJson(Map<String, dynamic> json) => _Node(
  data: json['data'] as Map<String, dynamic>,
  children: (json['children'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Relation.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$NodeToJson(_Node instance) => <String, dynamic>{
  'data': instance.data,
  'children': instance.children,
};
