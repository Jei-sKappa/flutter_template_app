import 'package:template/bootstrap.dart';
import 'package:template/data/data.dart';

void main() {
  final templateRepository = InMemoryTemplateRepository();

  bootstrap(templateRepository);
}
