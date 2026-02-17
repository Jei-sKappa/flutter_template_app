// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_event_status.dart';

class AppEventStatusMapper extends ClassMapperBase<AppEventStatus> {
  AppEventStatusMapper._();

  static AppEventStatusMapper? _instance;
  static AppEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppEventStatusMapper._());
      AppLoadingEventStatusMapper.ensureInitialized();
      AppSuccessEventStatusMapper.ensureInitialized();
      AppFailureEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppEventStatus';

  @override
  final MappableFields<AppEventStatus> fields = const {};

  static AppEventStatus _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('AppEventStatus');
  }

  @override
  final Function instantiate = _instantiate;

  static AppEventStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppEventStatus>(map);
  }

  static AppEventStatus fromJson(String json) {
    return ensureInitialized().decodeJson<AppEventStatus>(json);
  }
}

mixin AppEventStatusMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AppEventStatusCopyWith<AppEventStatus, AppEventStatus, AppEventStatus>
      get copyWith;
}

abstract class AppEventStatusCopyWith<$R, $In extends AppEventStatus, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  AppEventStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class AppLoadingEventStatusMapper
    extends ClassMapperBase<AppLoadingEventStatus> {
  AppLoadingEventStatusMapper._();

  static AppLoadingEventStatusMapper? _instance;
  static AppLoadingEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppLoadingEventStatusMapper._());
      AppEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppLoadingEventStatus';

  @override
  final MappableFields<AppLoadingEventStatus> fields = const {};

  static AppLoadingEventStatus _instantiate(DecodingData data) {
    return AppLoadingEventStatus();
  }

  @override
  final Function instantiate = _instantiate;

  static AppLoadingEventStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppLoadingEventStatus>(map);
  }

  static AppLoadingEventStatus fromJson(String json) {
    return ensureInitialized().decodeJson<AppLoadingEventStatus>(json);
  }
}

mixin AppLoadingEventStatusMappable {
  String toJson() {
    return AppLoadingEventStatusMapper.ensureInitialized()
        .encodeJson<AppLoadingEventStatus>(this as AppLoadingEventStatus);
  }

  Map<String, dynamic> toMap() {
    return AppLoadingEventStatusMapper.ensureInitialized()
        .encodeMap<AppLoadingEventStatus>(this as AppLoadingEventStatus);
  }

  AppLoadingEventStatusCopyWith<AppLoadingEventStatus, AppLoadingEventStatus,
      AppLoadingEventStatus> get copyWith => _AppLoadingEventStatusCopyWithImpl<
          AppLoadingEventStatus, AppLoadingEventStatus>(
      this as AppLoadingEventStatus, $identity, $identity);
  @override
  String toString() {
    return AppLoadingEventStatusMapper.ensureInitialized().stringifyValue(
      this as AppLoadingEventStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return AppLoadingEventStatusMapper.ensureInitialized().equalsValue(
      this as AppLoadingEventStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return AppLoadingEventStatusMapper.ensureInitialized().hashValue(
      this as AppLoadingEventStatus,
    );
  }
}

extension AppLoadingEventStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AppLoadingEventStatus, $Out> {
  AppLoadingEventStatusCopyWith<$R, AppLoadingEventStatus, $Out>
      get $asAppLoadingEventStatus => $base.as(
            (v, t, t2) =>
                _AppLoadingEventStatusCopyWithImpl<$R, $Out>(v, t, t2),
          );
}

abstract class AppLoadingEventStatusCopyWith<
    $R,
    $In extends AppLoadingEventStatus,
    $Out> implements AppEventStatusCopyWith<$R, $In, $Out> {
  @override
  $R call();
  AppLoadingEventStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AppLoadingEventStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppLoadingEventStatus, $Out>
    implements AppLoadingEventStatusCopyWith<$R, AppLoadingEventStatus, $Out> {
  _AppLoadingEventStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppLoadingEventStatus> $mapper =
      AppLoadingEventStatusMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  AppLoadingEventStatus $make(CopyWithData data) => AppLoadingEventStatus();

  @override
  AppLoadingEventStatusCopyWith<$R2, AppLoadingEventStatus, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AppLoadingEventStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AppSuccessEventStatusMapper
    extends ClassMapperBase<AppSuccessEventStatus> {
  AppSuccessEventStatusMapper._();

  static AppSuccessEventStatusMapper? _instance;
  static AppSuccessEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppSuccessEventStatusMapper._());
      AppEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppSuccessEventStatus';
  @override
  Function get typeFactory =>
      <TData extends dynamic>(f) => f<AppSuccessEventStatus<TData>>();

  static dynamic _$data(AppSuccessEventStatus v) => v.data;
  static dynamic _arg$data<TData extends dynamic>(f) => f<TData>();
  static const Field<AppSuccessEventStatus, dynamic> _f$data = Field(
    'data',
    _$data,
    opt: true,
    arg: _arg$data,
  );

  @override
  final MappableFields<AppSuccessEventStatus> fields = const {#data: _f$data};

  static AppSuccessEventStatus<TData> _instantiate<TData extends dynamic>(
    DecodingData data,
  ) {
    return AppSuccessEventStatus(data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static AppSuccessEventStatus<TData> fromMap<TData extends dynamic>(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized().decodeMap<AppSuccessEventStatus<TData>>(map);
  }

  static AppSuccessEventStatus<TData> fromJson<TData extends dynamic>(
    String json,
  ) {
    return ensureInitialized().decodeJson<AppSuccessEventStatus<TData>>(json);
  }
}

mixin AppSuccessEventStatusMappable<TData extends dynamic> {
  String toJson() {
    return AppSuccessEventStatusMapper.ensureInitialized()
        .encodeJson<AppSuccessEventStatus<TData>>(
      this as AppSuccessEventStatus<TData>,
    );
  }

  Map<String, dynamic> toMap() {
    return AppSuccessEventStatusMapper.ensureInitialized()
        .encodeMap<AppSuccessEventStatus<TData>>(
      this as AppSuccessEventStatus<TData>,
    );
  }

  AppSuccessEventStatusCopyWith<AppSuccessEventStatus<TData>,
          AppSuccessEventStatus<TData>, AppSuccessEventStatus<TData>, TData>
      get copyWith => _AppSuccessEventStatusCopyWithImpl<
          AppSuccessEventStatus<TData>,
          AppSuccessEventStatus<TData>,
          TData>(this as AppSuccessEventStatus<TData>, $identity, $identity);
  @override
  String toString() {
    return AppSuccessEventStatusMapper.ensureInitialized().stringifyValue(
      this as AppSuccessEventStatus<TData>,
    );
  }

  @override
  bool operator ==(Object other) {
    return AppSuccessEventStatusMapper.ensureInitialized().equalsValue(
      this as AppSuccessEventStatus<TData>,
      other,
    );
  }

  @override
  int get hashCode {
    return AppSuccessEventStatusMapper.ensureInitialized().hashValue(
      this as AppSuccessEventStatus<TData>,
    );
  }
}

extension AppSuccessEventStatusValueCopy<$R, $Out, TData extends dynamic>
    on ObjectCopyWith<$R, AppSuccessEventStatus<TData>, $Out> {
  AppSuccessEventStatusCopyWith<$R, AppSuccessEventStatus<TData>, $Out, TData>
      get $asAppSuccessEventStatus => $base.as(
            (v, t, t2) =>
                _AppSuccessEventStatusCopyWithImpl<$R, $Out, TData>(v, t, t2),
          );
}

abstract class AppSuccessEventStatusCopyWith<
    $R,
    $In extends AppSuccessEventStatus<TData>,
    $Out,
    TData extends dynamic> implements AppEventStatusCopyWith<$R, $In, $Out> {
  @override
  $R call({TData? data});
  AppSuccessEventStatusCopyWith<$R2, $In, $Out2, TData> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AppSuccessEventStatusCopyWithImpl<$R, $Out, TData extends dynamic>
    extends ClassCopyWithBase<$R, AppSuccessEventStatus<TData>, $Out>
    implements
        AppSuccessEventStatusCopyWith<$R, AppSuccessEventStatus<TData>, $Out,
            TData> {
  _AppSuccessEventStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppSuccessEventStatus> $mapper =
      AppSuccessEventStatusMapper.ensureInitialized();
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  AppSuccessEventStatus<TData> $make(CopyWithData data) =>
      AppSuccessEventStatus(data.get(#data, or: $value.data));

  @override
  AppSuccessEventStatusCopyWith<$R2, AppSuccessEventStatus<TData>, $Out2, TData>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AppSuccessEventStatusCopyWithImpl<$R2, $Out2, TData>(
              $value, $cast, t);
}

class AppFailureEventStatusMapper
    extends ClassMapperBase<AppFailureEventStatus> {
  AppFailureEventStatusMapper._();

  static AppFailureEventStatusMapper? _instance;
  static AppFailureEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperBase.addType<AppException>();
      MapperContainer.globals.use(_instance = AppFailureEventStatusMapper._());
      AppEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppFailureEventStatus';
  @override
  Function get typeFactory => <TFailure extends AppException>(f) =>
      f<AppFailureEventStatus<TFailure>>();

  static AppException _$exception(AppFailureEventStatus v) => v.exception;
  static dynamic _arg$exception<TFailure extends AppException>(f) =>
      f<TFailure>();
  static const Field<AppFailureEventStatus, AppException> _f$exception = Field(
    'exception',
    _$exception,
    arg: _arg$exception,
  );

  @override
  final MappableFields<AppFailureEventStatus> fields = const {
    #exception: _f$exception,
  };

  static AppFailureEventStatus<TFailure>
      _instantiate<TFailure extends AppException>(DecodingData data) {
    return AppFailureEventStatus(data.dec(_f$exception));
  }

  @override
  final Function instantiate = _instantiate;

  static AppFailureEventStatus<TFailure> fromMap<TFailure extends AppException>(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized().decodeMap<AppFailureEventStatus<TFailure>>(map);
  }

  static AppFailureEventStatus<TFailure>
      fromJson<TFailure extends AppException>(String json) {
    return ensureInitialized().decodeJson<AppFailureEventStatus<TFailure>>(
      json,
    );
  }
}

mixin AppFailureEventStatusMappable<TFailure extends AppException> {
  String toJson() {
    return AppFailureEventStatusMapper.ensureInitialized()
        .encodeJson<AppFailureEventStatus<TFailure>>(
      this as AppFailureEventStatus<TFailure>,
    );
  }

  Map<String, dynamic> toMap() {
    return AppFailureEventStatusMapper.ensureInitialized()
        .encodeMap<AppFailureEventStatus<TFailure>>(
      this as AppFailureEventStatus<TFailure>,
    );
  }

  AppFailureEventStatusCopyWith<
          AppFailureEventStatus<TFailure>,
          AppFailureEventStatus<TFailure>,
          AppFailureEventStatus<TFailure>,
          TFailure>
      get copyWith => _AppFailureEventStatusCopyWithImpl<
              AppFailureEventStatus<TFailure>,
              AppFailureEventStatus<TFailure>,
              TFailure>(
          this as AppFailureEventStatus<TFailure>, $identity, $identity);
  @override
  String toString() {
    return AppFailureEventStatusMapper.ensureInitialized().stringifyValue(
      this as AppFailureEventStatus<TFailure>,
    );
  }

  @override
  bool operator ==(Object other) {
    return AppFailureEventStatusMapper.ensureInitialized().equalsValue(
      this as AppFailureEventStatus<TFailure>,
      other,
    );
  }

  @override
  int get hashCode {
    return AppFailureEventStatusMapper.ensureInitialized().hashValue(
      this as AppFailureEventStatus<TFailure>,
    );
  }
}

extension AppFailureEventStatusValueCopy<$R, $Out,
        TFailure extends AppException>
    on ObjectCopyWith<$R, AppFailureEventStatus<TFailure>, $Out> {
  AppFailureEventStatusCopyWith<$R,
          AppFailureEventStatus<TFailure>, $Out, TFailure>
      get $asAppFailureEventStatus => $base.as(
            (v, t, t2) =>
                _AppFailureEventStatusCopyWithImpl<$R, $Out, TFailure>(
                    v, t, t2),
          );
}

abstract class AppFailureEventStatusCopyWith<
        $R,
        $In extends AppFailureEventStatus<TFailure>,
        $Out,
        TFailure extends AppException>
    implements AppEventStatusCopyWith<$R, $In, $Out> {
  @override
  $R call({TFailure? exception});
  AppFailureEventStatusCopyWith<$R2, $In, $Out2, TFailure> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AppFailureEventStatusCopyWithImpl<$R, $Out,
        TFailure extends AppException>
    extends ClassCopyWithBase<$R, AppFailureEventStatus<TFailure>, $Out>
    implements
        AppFailureEventStatusCopyWith<$R, AppFailureEventStatus<TFailure>, $Out,
            TFailure> {
  _AppFailureEventStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppFailureEventStatus> $mapper =
      AppFailureEventStatusMapper.ensureInitialized();
  @override
  $R call({TFailure? exception}) =>
      $apply(FieldCopyWithData({if (exception != null) #exception: exception}));
  @override
  AppFailureEventStatus<TFailure> $make(CopyWithData data) =>
      AppFailureEventStatus(data.get(#exception, or: $value.exception));

  @override
  AppFailureEventStatusCopyWith<$R2, AppFailureEventStatus<TFailure>, $Out2,
      TFailure> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppFailureEventStatusCopyWithImpl<$R2, $Out2, TFailure>(
        $value,
        $cast,
        t,
      );
}
