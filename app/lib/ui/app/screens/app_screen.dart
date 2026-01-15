import 'package:app/ui/template/template.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Template App', home: TemplateItemScreen());
  }
}
