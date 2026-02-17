import 'package:template/domain/domain.dart';

class ParsingFailedException extends AppKnownException {
  ParsingFailedException(this.rawObject) : super(StackTrace.current);

  final String rawObject;

  @override
  String get userMessage => 'Failed to parse object: $rawObject';
}
