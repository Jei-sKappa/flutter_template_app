import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/app.dart';
import 'package:template/core/bloc/bloc.dart';
import 'package:template/domain/domain.dart';

void bootstrap(TemplateRepository templateRepository) {
  Bloc.observer = const AppBlocObserver();

  runApp(
    App(
      templateRepository: templateRepository,
    ),
  );
}
