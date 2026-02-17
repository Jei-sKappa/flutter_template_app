import 'package:template/domain/domain.dart';

class UnknownDataException extends AppUnknownException {
  const UnknownDataException(
    super.caughtErrorObject,
    super.stackTrace, {
    required this.userMessage,
  });

  @override
  final String userMessage;
}
