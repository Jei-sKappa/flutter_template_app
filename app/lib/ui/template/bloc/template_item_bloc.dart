import 'package:bloc_event_status/bloc_event_status.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/core/bloc/bloc.dart';
import 'package:template/domain/domain.dart';

part 'template_event.dart';
part 'template_item_bloc.mapper.dart';
part 'template_item_bloc.bes.g.dart';
part 'template_state.dart';

@blocEventStatus
class TemplateItemBloc extends Bloc<TemplateEvent, TemplateState> {
  TemplateItemBloc({required this.templateRepository})
      : super(const TemplateState.initial()) {
    on<TemplateLoadItemsRequested>(_onTemplateLoadItemsRequested);
    on<TemplateItemSubscriptionRequested>(_onTemplateItemSubscriptionRequested);
    on<TemplateItemCreationRequested>(_onTemplateItemCreationRequested);
    on<TemplateItemUpdateRequested>(_onTemplateItemUpdateRequested);
    on<TemplateItemDeletionRequested>(_onTemplateItemDeletionRequested);
  }

  final TemplateRepository templateRepository;

  Future<void> _onTemplateLoadItemsRequested(
    TemplateLoadItemsRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emit.loading(event, state);

    final result = await templateRepository.getAll();
    switch (result) {
      case final Failure<List<TemplateItem>> failure:
        _handleFailure(event, emit, failure.exception);
      case final Ok<List<TemplateItem>> ok:
        emit.success(event, state.copyWith(items: ok.value));
    }
  }

  Future<void> _onTemplateItemSubscriptionRequested(
    TemplateItemSubscriptionRequested event,
    Emitter<TemplateState> emit,
  ) async {
    await emit.onEach(
      templateRepository.listenAll(),
      onData: (items) {
        switch (items) {
          case final Failure<List<TemplateItem>> failure:
            _handleFailure(event, emit, failure.exception);
          case final Ok<List<TemplateItem>> ok:
            emit.success(event, state.copyWith(items: ok.value));
        }
      },
    );
  }

  Future<void> _onTemplateItemCreationRequested(
    TemplateItemCreationRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emit.loading(event, state);

    final result = await templateRepository.create(event.item);
    switch (result) {
      case final Failure<void> failure:
        _handleFailure(event, emit, failure.exception);
      case Ok():
        emit.success(event, state);
    }
  }

  Future<void> _onTemplateItemUpdateRequested(
    TemplateItemUpdateRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emit.loading(event, state);

    final result = await templateRepository.update(event.item);
    switch (result) {
      case final Failure<void> failure:
        _handleFailure(event, emit, failure.exception);
      case Ok():
        emit.success(event, state);
    }
  }

  Future<void> _onTemplateItemDeletionRequested(
    TemplateItemDeletionRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emit.loading(event, state);

    final result = await templateRepository.delete(event.id);
    switch (result) {
      case final Failure<void> failure:
        _handleFailure(event, emit, failure.exception);
      case Ok():
        emit.success(event, state);
    }
  }

  void _handleFailure<T extends TemplateEvent, TFailure extends AppException>(
    T event,
    Emitter<TemplateState> emit,
    TFailure exception,
  ) {
    emit.failure(event, state, exception);
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
}
