import 'package:dart_mappable/dart_mappable.dart';

part 'fake_template_item.mapper.dart';

typedef FakeTemplateItemId = int;

@MappableClass()
class FakeTemplateItem with FakeTemplateItemMappable {
  const FakeTemplateItem({
    required this.id,
    required this.nameAndDescription,
    required this.createdAt,
    required this.isActive,
  });

  final FakeTemplateItemId id;

  // This contains the name and descriptionseparated by a colon
  final String nameAndDescription;

  // Note that this is a string because and not DateTime
  final String createdAt;

  final bool isActive;
}
