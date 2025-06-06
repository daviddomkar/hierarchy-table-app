import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hierarchy_table_app/app/view/app.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/repositories/json_node_repository.dart';

void main() {
  final nodeRepository = JsonNodeRepository(
    bundle: rootBundle,
    path: 'assets/example-data.json',
  );

  runApp(App(nodeRepository: nodeRepository));
}
