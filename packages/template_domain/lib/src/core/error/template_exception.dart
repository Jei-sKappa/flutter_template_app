sealed class TemplateException implements Exception {
  const TemplateException();

  String get userMessage;

  @override
  String toString() => 'TemplateException(userMessage: $userMessage)';
}

abstract class TemplateKnownException extends TemplateException {
  const TemplateKnownException();

  @override
  String toString() => 'TemplateKnownException(userMessage: $userMessage)';
}

class TemplateUnknownException extends TemplateException {
  const TemplateUnknownException(this.caughtErrorObject, this.userMessage);

  @override
  final String userMessage;

  final Object caughtErrorObject;

  @override
  String toString() =>
      'TemplateUnknownException('
      'userMessage: $userMessage, '
      'caughtErrorObject: $caughtErrorObject'
      ')';
}
