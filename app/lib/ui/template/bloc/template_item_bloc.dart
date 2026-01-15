import 'package:app/core/bloc/bloc.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_domain/template_domain.dart';

part 'template_event.dart';
part 'template_state.dart';
part 'template_item_bloc.mapper.dart';

class TemplateItemBloc extends Bloc<TemplateEvent, TemplateState>
    with TemplateBlocEventStatusMixin<TemplateEvent, TemplateState> {
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
    emitLoadingStatus(event);

    final result = await templateRepository.getAll();
    switch (result) {
      case final Failure<List<TemplateItem>> failure:
        emitFailureStatus(event, failure.exception);
      case final Ok<List<TemplateItem>> ok:
        emit(state.copyWith(items: ok.value));
        emitSuccessStatus(event);
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
            emitFailureStatus(event, failure.exception);
          case final Ok<List<TemplateItem>> ok:
            emit(state.copyWith(items: ok.value));
            emitSuccessStatus(event);
        }
      },
    );
  }

  Future<void> _onTemplateItemCreationRequested(
    TemplateItemCreationRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emitLoadingStatus(event);

    final result = await templateRepository.create(event.item);
    switch (result) {
      case final Failure<void> failure:
        emitFailureStatus(event, failure.exception);
      case Ok():
        emitSuccessStatus(event);
    }
  }

  Future<void> _onTemplateItemUpdateRequested(
    TemplateItemUpdateRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emitLoadingStatus(event);

    final result = await templateRepository.update(event.item);
    switch (result) {
      case final Failure<void> failure:
        emitFailureStatus(event, failure.exception);
      case Ok():
        emitSuccessStatus(event);
    }
  }

  Future<void> _onTemplateItemDeletionRequested(
    TemplateItemDeletionRequested event,
    Emitter<TemplateState> emit,
  ) async {
    emitLoadingStatus(event);

    final result = await templateRepository.delete(event.id);
    switch (result) {
      case final Failure<void> failure:
        emitFailureStatus(event, failure.exception);
      case Ok():
        emitSuccessStatus(event);
    }
  }
}
