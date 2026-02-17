import 'package:dart_mappable/dart_mappable.dart';
import 'package:template/domain/domain.dart';

part 'app_event_status.mapper.dart';

@MappableClass()
sealed class AppEventStatus with AppEventStatusMappable {
  const AppEventStatus();
}

@MappableClass()
class AppLoadingEventStatus extends AppEventStatus
    with AppLoadingEventStatusMappable {
  const AppLoadingEventStatus();
}

@MappableClass()
class AppSuccessEventStatus<TData extends dynamic> extends AppEventStatus
    with AppSuccessEventStatusMappable<TData> {
  const AppSuccessEventStatus([this.data]);

  final TData? data;
}

@MappableClass()
class AppFailureEventStatus<TFailure extends AppException>
    extends AppEventStatus with AppFailureEventStatusMappable<TFailure> {
  const AppFailureEventStatus(this.exception);

  final TFailure exception;
}
