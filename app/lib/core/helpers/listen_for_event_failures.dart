import 'package:app/core/bloc/bloc.dart';

bool listenForEventFailures(
  TemplateEventStatus? previous,
  TemplateEventStatus? current,
) {
  return current is TemplateFailureEventStatus;
}
