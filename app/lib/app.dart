import 'package:app/ui/app/app.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_domain/template_domain.dart';

class App extends StatelessWidget {
  const App({required this.templateRepository, super.key});

  final TemplateRepository templateRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: templateRepository),
      ],
      child: const AppScreen(),
    );
  }
}
