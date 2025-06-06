import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hierarchy_table_app/app/view/app_view.dart';
import 'package:hierarchy_table_app/hierarchy_table/data/repositories/node_repository.dart';

class App extends StatelessWidget {
  const App({required NodeRepository nodeRepository, super.key})
    : _nodeRepository = nodeRepository;

  final NodeRepository _nodeRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider.value(value: _nodeRepository)],
      child: const AppView(),
    );
  }
}
