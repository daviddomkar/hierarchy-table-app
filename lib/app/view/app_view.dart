import 'package:flutter/material.dart';
import 'package:hierarchy_table_app/hierarchy_table/view/hierarchy_table_page.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hierarchy Table',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const HierarchyTablePage(),
    );
  }
}
