// ignore_reason: this is an extension
// ignore_for_file: invalid_use_of_protected_member

import 'package:bloc_event_status/bloc_event_status.dart';
import 'package:flutter/foundation.dart';
import 'package:template/core/bloc/bloc.dart';
import 'package:template/domain/domain.dart';

typedef TemplateBlocEventStatusMixin<TEvent, TState>
    = BlocCustomEventStatusMixin<TEvent, TState, AppEventStatus>;

extension TemplateBlocEventStatusMixinX<TEvent, TState>
    on TemplateBlocEventStatusMixin<TEvent, TState> {
  @protected
  void emitLoadingStatus<TEventSubType extends TEvent>(TEventSubType event) =>
      emitEventStatus(event, const AppLoadingEventStatus());

  @protected
  void emitFailureStatus<TEventSubType extends TEvent,
      TFailure extends AppException>(TEventSubType event, TFailure exception) {
    emitEventStatus(event, AppFailureEventStatus(exception));
    addError(exception, StackTrace.current);
    final unknownError = switch (exception) {
      final AppUnknownException exception => exception.caughtErrorObject,
      _ => null,
    };
    // TODO: Add Real Sentry log
    print(
      '[SENTRY] Error caught while processing event: $event. '
      'UserMessage: ${exception.userMessage}.'
      '${unknownError != null ? ' Details: $unknownError' : ''}',
    );
  }

  @protected
  void emitSuccessStatus<TEventSubType extends TEvent, TData extends dynamic>(
    TEventSubType event, {
    TData? data,
  }) =>
      emitEventStatus(event, AppSuccessEventStatus(data));
}
