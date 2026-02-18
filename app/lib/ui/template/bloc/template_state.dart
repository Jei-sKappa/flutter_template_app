part of 'template_item_bloc.dart';

@MappableClass()
class TemplateState
    with
        TemplateStateMappable,
        EventStatusesMixin<TemplateEvent, AppEventStatus> {
  const TemplateState({
    required this.items,
    this.eventStatuses = const EventStatuses(),
  });

  const TemplateState.initial() : this(items: const []);

  final List<TemplateItem> items;

  @override
  final EventStatuses<TemplateEvent, AppEventStatus> eventStatuses;
}
