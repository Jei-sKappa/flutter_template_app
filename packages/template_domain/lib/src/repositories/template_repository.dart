import 'package:template_domain/template_domain.dart';

abstract class TemplateRepository {
  Stream<Result<TemplateItem>> listen(TemplateItemId id);

  Stream<Result<List<TemplateItem>>> listenAll();

  Future<Result<List<TemplateItem>>> getAll();

  Future<Result<TemplateItem?>> get(TemplateItemId id);

  Future<Result<void>> create(TemplateItem item);

  Future<Result<void>> update(TemplateItem item);

  Future<Result<void>> delete(TemplateItemId id);
}
