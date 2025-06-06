// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Relation _$RelationFromJson(Map<String, dynamic> json) => _Relation(
  records: (json['records'] as List<dynamic>)
      .map((e) => Node.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RelationToJson(_Relation instance) => <String, dynamic>{
  'records': instance.records,
};
