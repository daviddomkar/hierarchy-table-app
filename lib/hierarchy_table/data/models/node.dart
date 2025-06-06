import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/models/relation.dart';

part 'node.freezed.dart';
part 'node.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Node with _$Node {
  const factory Node({
    required Map<String, dynamic> data,
    required Map<String, Relation> children,
  }) = _Node;

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);
}
