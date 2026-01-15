import 'package:dart_mappable/dart_mappable.dart';
import 'package:template_domain/template_domain.dart';

part 'template_event_status.mapper.dart';

@MappableClass()
sealed class TemplateEventStatus with TemplateEventStatusMappable {
  const TemplateEventStatus();
}

@MappableClass()
class TemplateLoadingEventStatus extends TemplateEventStatus
    with TemplateLoadingEventStatusMappable {
  const TemplateLoadingEventStatus();
}

@MappableClass()
class TemplateSuccessEventStatus<TData extends dynamic>
    extends TemplateEventStatus
    with TemplateSuccessEventStatusMappable<TData> {
  const TemplateSuccessEventStatus([this.data]);

  final TData? data;
}

@MappableClass()
class TemplateFailureEventStatus<TFailure extends TemplateException>
    extends TemplateEventStatus
    with TemplateFailureEventStatusMappable<TFailure> {
  const TemplateFailureEventStatus(this.exception);

  final TFailure exception;
}
