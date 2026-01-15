import 'package:app/app.dart';
import 'package:app/core/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_domain/template_domain.dart';

void bootstrap(TemplateRepository templateRepository) {
  Bloc.observer = const AppBlocObserver();

  runApp(App(templateRepository: templateRepository));
}
