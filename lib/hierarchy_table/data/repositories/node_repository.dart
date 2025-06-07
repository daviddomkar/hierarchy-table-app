import 'package:hierarchy_table_app/hierarchy_table/data/models/node.dart';

abstract class NodeRepository {
  Future<List<Node>> getNodes();
  Future<void> saveNodes(List<Node> nodes);
}
