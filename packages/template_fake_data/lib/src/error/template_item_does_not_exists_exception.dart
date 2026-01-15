import 'package:template_domain/template_domain.dart';

class TemplateItemDoesNotExistsException extends TemplateKnownException {
  const TemplateItemDoesNotExistsException(this.id);

  final TemplateItemId id;

  @override
  String get userMessage => 'Item with id $id does not exist';
}
