// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// dart format off

part of 'template_item_bloc.dart';

// **************************************************************************
// BlocEventStatusGenerator
// **************************************************************************

// dart format off

extension $TemplateItemBlocEmitterX on Emitter<TemplateState> {
  void _emitEventStatus<T extends TemplateEvent>(
    T event,
    AppEventStatus status,
    TemplateState state,
  ) {
    this(
      state.copyWith(
        eventStatuses: state.eventStatuses.update(event, status),
      ),
    );
  }

  void loading<T extends TemplateEvent>(T event, TemplateState state) =>
      _emitEventStatus(event, const AppLoadingEventStatus(), state);

  void success<TData extends dynamic, T extends TemplateEvent>(T event, TemplateState state, [TData? data]) =>
      _emitEventStatus(event, AppSuccessEventStatus<TData>(data, ), state);

  void failure<TFailure extends AppException, T extends TemplateEvent>(T event, TemplateState state, TFailure exception) =>
      _emitEventStatus(event, AppFailureEventStatus<TFailure>(exception, ), state);
}

// dart format on
