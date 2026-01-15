// ignore_reason: this is an extension
// ignore_for_file: invalid_use_of_protected_member

import 'package:app/core/bloc/bloc.dart';
import 'package:bloc_event_status/bloc_event_status.dart';
import 'package:flutter/foundation.dart';
import 'package:template_domain/template_domain.dart';

typedef TemplateBlocEventStatusMixin<TEvent, TState> =
    BlocCustomEventStatusMixin<TEvent, TState, TemplateEventStatus>;

extension TemplateBlocEventStatusMixinX<TEvent, TState>
    on TemplateBlocEventStatusMixin<TEvent, TState> {
  @protected
  void emitLoadingStatus<TEventSubType extends TEvent>(TEventSubType event) =>
      emitEventStatus(event, const TemplateLoadingEventStatus());

  @protected
  void emitFailureStatus<
    TEventSubType extends TEvent,
    TFailure extends TemplateException
  >(TEventSubType event, TFailure exception) {
    emitEventStatus(event, TemplateFailureEventStatus(exception));
    addError(exception, StackTrace.current);
    final unknownError = switch (exception) {
      final TemplateUnknownException exception => exception.caughtErrorObject,
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
  }) => emitEventStatus(event, TemplateSuccessEventStatus(data));
}
