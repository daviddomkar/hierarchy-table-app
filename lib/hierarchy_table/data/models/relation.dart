import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/models/node.dart';

part 'relation.freezed.dart';
part 'relation.g.dart';

@freezed
abstract class Relation with _$Relation {
  const factory Relation({required List<Node> records}) = _Relation;

  factory Relation.fromJson(Map<String, dynamic> json) =>
      _$RelationFromJson(json);
}
