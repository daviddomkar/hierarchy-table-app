import 'package:flutter/material.dart';
import 'package:hierarchy_table_app/hierarchy_table/view/hierarchy_table_page.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hierarchy Table',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Colors.purple,
          onPrimary: Colors.white,
          surfaceTint: Color(0xff242424),
        ),
      ),
      home: const HierarchyTablePage(),
    );
  }
}
