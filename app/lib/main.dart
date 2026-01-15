import 'package:app/bootstrap.dart';
import 'package:template_fake_data/template_fake_data.dart';

void main() {
  final templateRepository = FakeTemplateRepository();

  bootstrap(templateRepository);
}
