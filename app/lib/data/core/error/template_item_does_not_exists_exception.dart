import 'package:template/domain/domain.dart';

class ItemDoesNotExistsException extends AppKnownException {
  ItemDoesNotExistsException(this.id) : super(StackTrace.current);

  final TemplateItemId id;

  @override
  String get userMessage => 'Item with id $id does not exist';
}
