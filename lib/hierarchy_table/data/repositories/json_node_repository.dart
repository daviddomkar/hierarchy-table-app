import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/models/node.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/repositories/node_repository.dart';

class JsonNodeRepository implements NodeRepository {
  JsonNodeRepository({required AssetBundle bundle, required String path})
    : _bundle = bundle,
      _path = path;

  final AssetBundle _bundle;
  final String _path;

  @override
  Future<List<Node>> getNodes() async {
    final data = await _bundle.loadString(_path);
    final nodes = json.decode(data) as List<dynamic>;
    return nodes.cast<Map<String, dynamic>>().map(Node.fromJson).toList();
  }
}
