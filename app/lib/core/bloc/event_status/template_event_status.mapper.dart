// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'template_event_status.dart';

class TemplateEventStatusMapper extends ClassMapperBase<TemplateEventStatus> {
  TemplateEventStatusMapper._();

  static TemplateEventStatusMapper? _instance;
  static TemplateEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TemplateEventStatusMapper._());
      TemplateLoadingEventStatusMapper.ensureInitialized();
      TemplateSuccessEventStatusMapper.ensureInitialized();
      TemplateFailureEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TemplateEventStatus';

  @override
  final MappableFields<TemplateEventStatus> fields = const {};

  static TemplateEventStatus _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('TemplateEventStatus');
  }

  @override
  final Function instantiate = _instantiate;

  static TemplateEventStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TemplateEventStatus>(map);
  }

  static TemplateEventStatus fromJson(String json) {
    return ensureInitialized().decodeJson<TemplateEventStatus>(json);
  }
}

mixin TemplateEventStatusMappable {
  String toJson();
  Map<String, dynamic> toMap();
  TemplateEventStatusCopyWith<
    TemplateEventStatus,
    TemplateEventStatus,
    TemplateEventStatus
  >
  get copyWith;
}

abstract class TemplateEventStatusCopyWith<
  $R,
  $In extends TemplateEventStatus,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  TemplateEventStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class TemplateLoadingEventStatusMapper
    extends ClassMapperBase<TemplateLoadingEventStatus> {
  TemplateLoadingEventStatusMapper._();

  static TemplateLoadingEventStatusMapper? _instance;
  static TemplateLoadingEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = TemplateLoadingEventStatusMapper._(),
      );
      TemplateEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TemplateLoadingEventStatus';

  @override
  final MappableFields<TemplateLoadingEventStatus> fields = const {};

  static TemplateLoadingEventStatus _instantiate(DecodingData data) {
    return TemplateLoadingEventStatus();
  }

  @override
  final Function instantiate = _instantiate;

  static TemplateLoadingEventStatus fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TemplateLoadingEventStatus>(map);
  }

  static TemplateLoadingEventStatus fromJson(String json) {
    return ensureInitialized().decodeJson<TemplateLoadingEventStatus>(json);
  }
}

mixin TemplateLoadingEventStatusMappable {
  String toJson() {
    return TemplateLoadingEventStatusMapper.ensureInitialized()
        .encodeJson<TemplateLoadingEventStatus>(
          this as TemplateLoadingEventStatus,
        );
  }

  Map<String, dynamic> toMap() {
    return TemplateLoadingEventStatusMapper.ensureInitialized()
        .encodeMap<TemplateLoadingEventStatus>(
          this as TemplateLoadingEventStatus,
        );
  }

  TemplateLoadingEventStatusCopyWith<
    TemplateLoadingEventStatus,
    TemplateLoadingEventStatus,
    TemplateLoadingEventStatus
  >
  get copyWith =>
      _TemplateLoadingEventStatusCopyWithImpl<
        TemplateLoadingEventStatus,
        TemplateLoadingEventStatus
      >(this as TemplateLoadingEventStatus, $identity, $identity);
  @override
  String toString() {
    return TemplateLoadingEventStatusMapper.ensureInitialized().stringifyValue(
      this as TemplateLoadingEventStatus,
    );
  }

  @override
  bool operator ==(Object other) {
    return TemplateLoadingEventStatusMapper.ensureInitialized().equalsValue(
      this as TemplateLoadingEventStatus,
      other,
    );
  }

  @override
  int get hashCode {
    return TemplateLoadingEventStatusMapper.ensureInitialized().hashValue(
      this as TemplateLoadingEventStatus,
    );
  }
}

extension TemplateLoadingEventStatusValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TemplateLoadingEventStatus, $Out> {
  TemplateLoadingEventStatusCopyWith<$R, TemplateLoadingEventStatus, $Out>
  get $asTemplateLoadingEventStatus => $base.as(
    (v, t, t2) => _TemplateLoadingEventStatusCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class TemplateLoadingEventStatusCopyWith<
  $R,
  $In extends TemplateLoadingEventStatus,
  $Out
>
    implements TemplateEventStatusCopyWith<$R, $In, $Out> {
  @override
  $R call();
  TemplateLoadingEventStatusCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TemplateLoadingEventStatusCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TemplateLoadingEventStatus, $Out>
    implements
        TemplateLoadingEventStatusCopyWith<
          $R,
          TemplateLoadingEventStatus,
          $Out
        > {
  _TemplateLoadingEventStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TemplateLoadingEventStatus> $mapper =
      TemplateLoadingEventStatusMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TemplateLoadingEventStatus $make(CopyWithData data) =>
      TemplateLoadingEventStatus();

  @override
  TemplateLoadingEventStatusCopyWith<$R2, TemplateLoadingEventStatus, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TemplateLoadingEventStatusCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TemplateSuccessEventStatusMapper
    extends ClassMapperBase<TemplateSuccessEventStatus> {
  TemplateSuccessEventStatusMapper._();

  static TemplateSuccessEventStatusMapper? _instance;
  static TemplateSuccessEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = TemplateSuccessEventStatusMapper._(),
      );
      TemplateEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TemplateSuccessEventStatus';
  @override
  Function get typeFactory =>
      <TData extends dynamic>(f) => f<TemplateSuccessEventStatus<TData>>();

  static dynamic _$data(TemplateSuccessEventStatus v) => v.data;
  static dynamic _arg$data<TData extends dynamic>(f) => f<TData>();
  static const Field<TemplateSuccessEventStatus, dynamic> _f$data = Field(
    'data',
    _$data,
    opt: true,
    arg: _arg$data,
  );

  @override
  final MappableFields<TemplateSuccessEventStatus> fields = const {
    #data: _f$data,
  };

  static TemplateSuccessEventStatus<TData> _instantiate<TData extends dynamic>(
    DecodingData data,
  ) {
    return TemplateSuccessEventStatus(data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static TemplateSuccessEventStatus<TData> fromMap<TData extends dynamic>(
    Map<String, dynamic> map,
  ) {
    return ensureInitialized().decodeMap<TemplateSuccessEventStatus<TData>>(
      map,
    );
  }

  static TemplateSuccessEventStatus<TData> fromJson<TData extends dynamic>(
    String json,
  ) {
    return ensureInitialized().decodeJson<TemplateSuccessEventStatus<TData>>(
      json,
    );
  }
}

mixin TemplateSuccessEventStatusMappable<TData extends dynamic> {
  String toJson() {
    return TemplateSuccessEventStatusMapper.ensureInitialized()
        .encodeJson<TemplateSuccessEventStatus<TData>>(
          this as TemplateSuccessEventStatus<TData>,
        );
  }

  Map<String, dynamic> toMap() {
    return TemplateSuccessEventStatusMapper.ensureInitialized()
        .encodeMap<TemplateSuccessEventStatus<TData>>(
          this as TemplateSuccessEventStatus<TData>,
        );
  }

  TemplateSuccessEventStatusCopyWith<
    TemplateSuccessEventStatus<TData>,
    TemplateSuccessEventStatus<TData>,
    TemplateSuccessEventStatus<TData>,
    TData
  >
  get copyWith =>
      _TemplateSuccessEventStatusCopyWithImpl<
        TemplateSuccessEventStatus<TData>,
        TemplateSuccessEventStatus<TData>,
        TData
      >(this as TemplateSuccessEventStatus<TData>, $identity, $identity);
  @override
  String toString() {
    return TemplateSuccessEventStatusMapper.ensureInitialized().stringifyValue(
      this as TemplateSuccessEventStatus<TData>,
    );
  }

  @override
  bool operator ==(Object other) {
    return TemplateSuccessEventStatusMapper.ensureInitialized().equalsValue(
      this as TemplateSuccessEventStatus<TData>,
      other,
    );
  }

  @override
  int get hashCode {
    return TemplateSuccessEventStatusMapper.ensureInitialized().hashValue(
      this as TemplateSuccessEventStatus<TData>,
    );
  }
}

extension TemplateSuccessEventStatusValueCopy<$R, $Out, TData extends dynamic>
    on ObjectCopyWith<$R, TemplateSuccessEventStatus<TData>, $Out> {
  TemplateSuccessEventStatusCopyWith<
    $R,
    TemplateSuccessEventStatus<TData>,
    $Out,
    TData
  >
  get $asTemplateSuccessEventStatus => $base.as(
    (v, t, t2) =>
        _TemplateSuccessEventStatusCopyWithImpl<$R, $Out, TData>(v, t, t2),
  );
}

abstract class TemplateSuccessEventStatusCopyWith<
  $R,
  $In extends TemplateSuccessEventStatus<TData>,
  $Out,
  TData extends dynamic
>
    implements TemplateEventStatusCopyWith<$R, $In, $Out> {
  @override
  $R call({TData? data});
  TemplateSuccessEventStatusCopyWith<$R2, $In, $Out2, TData> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _TemplateSuccessEventStatusCopyWithImpl<$R, $Out, TData extends dynamic>
    extends ClassCopyWithBase<$R, TemplateSuccessEventStatus<TData>, $Out>
    implements
        TemplateSuccessEventStatusCopyWith<
          $R,
          TemplateSuccessEventStatus<TData>,
          $Out,
          TData
        > {
  _TemplateSuccessEventStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TemplateSuccessEventStatus> $mapper =
      TemplateSuccessEventStatusMapper.ensureInitialized();
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  TemplateSuccessEventStatus<TData> $make(CopyWithData data) =>
      TemplateSuccessEventStatus(data.get(#data, or: $value.data));

  @override
  TemplateSuccessEventStatusCopyWith<
    $R2,
    TemplateSuccessEventStatus<TData>,
    $Out2,
    TData
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TemplateSuccessEventStatusCopyWithImpl<$R2, $Out2, TData>(
        $value,
        $cast,
        t,
      );
}

class TemplateFailureEventStatusMapper
    extends ClassMapperBase<TemplateFailureEventStatus> {
  TemplateFailureEventStatusMapper._();

  static TemplateFailureEventStatusMapper? _instance;
  static TemplateFailureEventStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperBase.addType<TemplateException>();
      MapperContainer.globals.use(
        _instance = TemplateFailureEventStatusMapper._(),
      );
      TemplateEventStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TemplateFailureEventStatus';
  @override
  Function get typeFactory =>
      <TFailure extends TemplateException>(f) =>
          f<TemplateFailureEventStatus<TFailure>>();

  static TemplateException _$exception(TemplateFailureEventStatus v) =>
      v.exception;
  static dynamic _arg$exception<TFailure extends TemplateException>(f) =>
      f<TFailure>();
  static const Field<TemplateFailureEventStatus, TemplateException>
  _f$exception = Field('exception', _$exception, arg: _arg$exception);

  @override
  final MappableFields<TemplateFailureEventStatus> fields = const {
    #exception: _f$exception,
  };

  static TemplateFailureEventStatus<TFailure>
  _instantiate<TFailure extends TemplateException>(DecodingData data) {
    return TemplateFailureEventStatus(data.dec(_f$exception));
  }

  @override
  final Function instantiate = _instantiate;

  static TemplateFailureEventStatus<TFailure>
  fromMap<TFailure extends TemplateException>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TemplateFailureEventStatus<TFailure>>(
      map,
    );
  }

  static TemplateFailureEventStatus<TFailure>
  fromJson<TFailure extends TemplateException>(String json) {
    return ensureInitialized().decodeJson<TemplateFailureEventStatus<TFailure>>(
      json,
    );
  }
}

mixin TemplateFailureEventStatusMappable<TFailure extends TemplateException> {
  String toJson() {
    return TemplateFailureEventStatusMapper.ensureInitialized()
        .encodeJson<TemplateFailureEventStatus<TFailure>>(
          this as TemplateFailureEventStatus<TFailure>,
        );
  }

  Map<String, dynamic> toMap() {
    return TemplateFailureEventStatusMapper.ensureInitialized()
        .encodeMap<TemplateFailureEventStatus<TFailure>>(
          this as TemplateFailureEventStatus<TFailure>,
        );
  }

  TemplateFailureEventStatusCopyWith<
    TemplateFailureEventStatus<TFailure>,
    TemplateFailureEventStatus<TFailure>,
    TemplateFailureEventStatus<TFailure>,
    TFailure
  >
  get copyWith =>
      _TemplateFailureEventStatusCopyWithImpl<
        TemplateFailureEventStatus<TFailure>,
        TemplateFailureEventStatus<TFailure>,
        TFailure
      >(this as TemplateFailureEventStatus<TFailure>, $identity, $identity);
  @override
  String toString() {
    return TemplateFailureEventStatusMapper.ensureInitialized().stringifyValue(
      this as TemplateFailureEventStatus<TFailure>,
    );
  }

  @override
  bool operator ==(Object other) {
    return TemplateFailureEventStatusMapper.ensureInitialized().equalsValue(
      this as TemplateFailureEventStatus<TFailure>,
      other,
    );
  }

  @override
  int get hashCode {
    return TemplateFailureEventStatusMapper.ensureInitialized().hashValue(
      this as TemplateFailureEventStatus<TFailure>,
    );
  }
}

extension TemplateFailureEventStatusValueCopy<
  $R,
  $Out,
  TFailure extends TemplateException
>
    on ObjectCopyWith<$R, TemplateFailureEventStatus<TFailure>, $Out> {
  TemplateFailureEventStatusCopyWith<
    $R,
    TemplateFailureEventStatus<TFailure>,
    $Out,
    TFailure
  >
  get $asTemplateFailureEventStatus => $base.as(
    (v, t, t2) =>
        _TemplateFailureEventStatusCopyWithImpl<$R, $Out, TFailure>(v, t, t2),
  );
}

abstract class TemplateFailureEventStatusCopyWith<
  $R,
  $In extends TemplateFailureEventStatus<TFailure>,
  $Out,
  TFailure extends TemplateException
>
    implements TemplateEventStatusCopyWith<$R, $In, $Out> {
  @override
  $R call({TFailure? exception});
  TemplateFailureEventStatusCopyWith<$R2, $In, $Out2, TFailure>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TemplateFailureEventStatusCopyWithImpl<
  $R,
  $Out,
  TFailure extends TemplateException
>
    extends ClassCopyWithBase<$R, TemplateFailureEventStatus<TFailure>, $Out>
    implements
        TemplateFailureEventStatusCopyWith<
          $R,
          TemplateFailureEventStatus<TFailure>,
          $Out,
          TFailure
        > {
  _TemplateFailureEventStatusCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TemplateFailureEventStatus> $mapper =
      TemplateFailureEventStatusMapper.ensureInitialized();
  @override
  $R call({TFailure? exception}) =>
      $apply(FieldCopyWithData({if (exception != null) #exception: exception}));
  @override
  TemplateFailureEventStatus<TFailure> $make(CopyWithData data) =>
      TemplateFailureEventStatus(data.get(#exception, or: $value.exception));

  @override
  TemplateFailureEventStatusCopyWith<
    $R2,
    TemplateFailureEventStatus<TFailure>,
    $Out2,
    TFailure
  >
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TemplateFailureEventStatusCopyWithImpl<$R2, $Out2, TFailure>(
        $value,
        $cast,
        t,
      );
}

