import 'package:template/data/data.dart';
import 'package:template/domain/domain.dart';

extension TemplateItemConverterX on TemplateItem {
  FakeTemplateItem toFake() {
    return FakeTemplateItem(
      id: id,
      nameAndDescription: '$name:$description',
      createdAt: createdAt.toUtc().toIso8601String(),
      isActive: isActive,
    );
  }
}

extension FakeTemplateItemConverterX on FakeTemplateItem {
  TemplateItem toDomain() {
    final nameAndDescriptionList = nameAndDescription.split(':');
    final name = nameAndDescriptionList[0];
    final description = nameAndDescriptionList[1];

    return TemplateItem(
      id: id,
      name: name,
      description: description,
      createdAt: DateTime.parse(createdAt).toUtc(),
      isActive: isActive,
    );
  }
}
