import 'package:template_domain/template_domain.dart';

class TriedAccessingDisposedControllerException extends TemplateKnownException {
  const TriedAccessingDisposedControllerException();

  @override
  String get userMessage => 'Tried accessing disposed controller';
}
