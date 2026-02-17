import 'package:template/domain/domain.dart';

class TriedAccessingDisposedControllerException extends AppKnownException {
  TriedAccessingDisposedControllerException() : super(StackTrace.current);

  @override
  String get userMessage => 'Tried accessing disposed controller';
}
