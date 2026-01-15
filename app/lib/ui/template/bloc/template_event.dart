part of 'template_item_bloc.dart';

class TemplateEvent extends Equatable {
  const TemplateEvent();

  @override
  List<Object?> get props => [];
}

class TemplateLoadItemsRequested extends TemplateEvent {
  const TemplateLoadItemsRequested();

  @override
  List<Object?> get props => [];
}

class TemplateItemSubscriptionRequested extends TemplateEvent {
  const TemplateItemSubscriptionRequested();

  @override
  List<Object?> get props => [];
}

class TemplateItemCreationRequested extends TemplateEvent {
  const TemplateItemCreationRequested({required this.item});

  final TemplateItem item;

  @override
  List<Object?> get props => [];
}


class TemplateItemUpdateRequested extends TemplateEvent {
  const TemplateItemUpdateRequested({required this.item});

  final TemplateItem item;

  @override
  List<Object?> get props => [];
}


class TemplateItemDeletionRequested extends TemplateEvent {
  const TemplateItemDeletionRequested({required this.id});

  final TemplateItemId id;

  @override
  List<Object?> get props => [];
}
