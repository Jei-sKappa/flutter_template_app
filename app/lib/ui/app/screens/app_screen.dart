import 'package:flutter/material.dart';
import 'package:template/ui/template/template.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Template App', home: TemplateItemScreen());
  }
}
