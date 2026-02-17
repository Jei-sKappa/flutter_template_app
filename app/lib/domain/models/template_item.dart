import 'package:dart_mappable/dart_mappable.dart';

part 'template_item.mapper.dart';

typedef TemplateItemId = int;

@MappableClass()
class TemplateItem with TemplateItemMappable {
  const TemplateItem({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.isActive,
  });

  final TemplateItemId id;
  final String name;
  final String description;
  final DateTime createdAt;
  final bool isActive;
}
