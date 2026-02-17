// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'template_item_bloc.dart';

class TemplateStateMapper extends ClassMapperBase<TemplateState> {
  TemplateStateMapper._();

  static TemplateStateMapper? _instance;
  static TemplateStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TemplateStateMapper._());
      TemplateItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TemplateState';

  static List<TemplateItem> _$items(TemplateState v) => v.items;
  static const Field<TemplateState, List<TemplateItem>> _f$items = Field(
    'items',
    _$items,
  );

  @override
  final MappableFields<TemplateState> fields = const {#items: _f$items};

  static TemplateState _instantiate(DecodingData data) {
    return TemplateState(items: data.dec(_f$items));
  }

  @override
  final Function instantiate = _instantiate;

  static TemplateState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TemplateState>(map);
  }

  static TemplateState fromJson(String json) {
    return ensureInitialized().decodeJson<TemplateState>(json);
  }
}

mixin TemplateStateMappable {
  String toJson() {
    return TemplateStateMapper.ensureInitialized().encodeJson<TemplateState>(
      this as TemplateState,
    );
  }

  Map<String, dynamic> toMap() {
    return TemplateStateMapper.ensureInitialized().encodeMap<TemplateState>(
      this as TemplateState,
    );
  }

  TemplateStateCopyWith<TemplateState, TemplateState, TemplateState>
      get copyWith => _TemplateStateCopyWithImpl<TemplateState, TemplateState>(
            this as TemplateState,
            $identity,
            $identity,
          );
  @override
  String toString() {
    return TemplateStateMapper.ensureInitialized().stringifyValue(
      this as TemplateState,
    );
  }

  @override
  bool operator ==(Object other) {
    return TemplateStateMapper.ensureInitialized().equalsValue(
      this as TemplateState,
      other,
    );
  }

  @override
  int get hashCode {
    return TemplateStateMapper.ensureInitialized().hashValue(
      this as TemplateState,
    );
  }
}

extension TemplateStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TemplateState, $Out> {
  TemplateStateCopyWith<$R, TemplateState, $Out> get $asTemplateState =>
      $base.as((v, t, t2) => _TemplateStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TemplateStateCopyWith<$R, $In extends TemplateState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, TemplateItem,
      TemplateItemCopyWith<$R, TemplateItem, TemplateItem>> get items;
  $R call({List<TemplateItem>? items});
  TemplateStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TemplateStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TemplateState, $Out>
    implements TemplateStateCopyWith<$R, TemplateState, $Out> {
  _TemplateStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TemplateState> $mapper =
      TemplateStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, TemplateItem,
          TemplateItemCopyWith<$R, TemplateItem, TemplateItem>>
      get items => ListCopyWith(
            $value.items,
            (v, t) => v.copyWith.$chain(t),
            (v) => call(items: v),
          );
  @override
  $R call({List<TemplateItem>? items}) =>
      $apply(FieldCopyWithData({if (items != null) #items: items}));
  @override
  TemplateState $make(CopyWithData data) =>
      TemplateState(items: data.get(#items, or: $value.items));

  @override
  TemplateStateCopyWith<$R2, TemplateState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) =>
      _TemplateStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
