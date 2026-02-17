sealed class AppException implements Exception {
  const AppException();

  String get userMessage;

  StackTrace get stackTrace;

  @override
  String toString() =>
      'AppException(userMessage: $userMessage, stackTrace: $stackTrace)';
}

abstract class AppKnownException extends AppException {
  const AppKnownException(this.stackTrace);

  @override
  final StackTrace stackTrace;

  @override
  String toString() => 'AppKnownException(userMessage: $userMessage)';
}

abstract class AppUnknownException extends AppException {
  const AppUnknownException(this.caughtErrorObject, this.stackTrace);

  final Object caughtErrorObject;

  @override
  final StackTrace stackTrace;

  @override
  String toString() => 'AppUnknownException('
      'userMessage: $userMessage, '
      'caughtErrorObject: $caughtErrorObject'
      'stackTrace: $stackTrace'
      ')';
}
