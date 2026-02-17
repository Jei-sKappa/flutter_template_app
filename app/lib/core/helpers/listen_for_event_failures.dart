import 'package:template/core/bloc/bloc.dart';

bool listenForEventFailures(
  AppEventStatus? previous,
  AppEventStatus? current,
) {
  return current is AppFailureEventStatus;
}
