part of 'template_item_bloc.dart';

@MappableClass()
class TemplateState with TemplateStateMappable {
  const TemplateState({required this.items});

  const TemplateState.initial() : this(items: const []);

  final List<TemplateItem> items;
}
