// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'fake_template_item.dart';

class FakeTemplateItemMapper extends ClassMapperBase<FakeTemplateItem> {
  FakeTemplateItemMapper._();

  static FakeTemplateItemMapper? _instance;
  static FakeTemplateItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FakeTemplateItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FakeTemplateItem';

  static int _$id(FakeTemplateItem v) => v.id;
  static const Field<FakeTemplateItem, int> _f$id = Field('id', _$id);
  static String _$nameAndDescription(FakeTemplateItem v) =>
      v.nameAndDescription;
  static const Field<FakeTemplateItem, String> _f$nameAndDescription = Field(
    'nameAndDescription',
    _$nameAndDescription,
  );
  static String _$createdAt(FakeTemplateItem v) => v.createdAt;
  static const Field<FakeTemplateItem, String> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
  );
  static bool _$isActive(FakeTemplateItem v) => v.isActive;
  static const Field<FakeTemplateItem, bool> _f$isActive = Field(
    'isActive',
    _$isActive,
  );

  @override
  final MappableFields<FakeTemplateItem> fields = const {
    #id: _f$id,
    #nameAndDescription: _f$nameAndDescription,
    #createdAt: _f$createdAt,
    #isActive: _f$isActive,
  };

  static FakeTemplateItem _instantiate(DecodingData data) {
    return FakeTemplateItem(
      id: data.dec(_f$id),
      nameAndDescription: data.dec(_f$nameAndDescription),
      createdAt: data.dec(_f$createdAt),
      isActive: data.dec(_f$isActive),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FakeTemplateItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FakeTemplateItem>(map);
  }

  static FakeTemplateItem fromJson(String json) {
    return ensureInitialized().decodeJson<FakeTemplateItem>(json);
  }
}

mixin FakeTemplateItemMappable {
  String toJson() {
    return FakeTemplateItemMapper.ensureInitialized()
        .encodeJson<FakeTemplateItem>(this as FakeTemplateItem);
  }

  Map<String, dynamic> toMap() {
    return FakeTemplateItemMapper.ensureInitialized()
        .encodeMap<FakeTemplateItem>(this as FakeTemplateItem);
  }

  FakeTemplateItemCopyWith<FakeTemplateItem, FakeTemplateItem, FakeTemplateItem>
      get copyWith =>
          _FakeTemplateItemCopyWithImpl<FakeTemplateItem, FakeTemplateItem>(
            this as FakeTemplateItem,
            $identity,
            $identity,
          );
  @override
  String toString() {
    return FakeTemplateItemMapper.ensureInitialized().stringifyValue(
      this as FakeTemplateItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return FakeTemplateItemMapper.ensureInitialized().equalsValue(
      this as FakeTemplateItem,
      other,
    );
  }

  @override
  int get hashCode {
    return FakeTemplateItemMapper.ensureInitialized().hashValue(
      this as FakeTemplateItem,
    );
  }
}

extension FakeTemplateItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FakeTemplateItem, $Out> {
  FakeTemplateItemCopyWith<$R, FakeTemplateItem, $Out>
      get $asFakeTemplateItem => $base
          .as((v, t, t2) => _FakeTemplateItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FakeTemplateItemCopyWith<$R, $In extends FakeTemplateItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? nameAndDescription,
    String? createdAt,
    bool? isActive,
  });
  FakeTemplateItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FakeTemplateItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FakeTemplateItem, $Out>
    implements FakeTemplateItemCopyWith<$R, FakeTemplateItem, $Out> {
  _FakeTemplateItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FakeTemplateItem> $mapper =
      FakeTemplateItemMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? nameAndDescription,
    String? createdAt,
    bool? isActive,
  }) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (nameAndDescription != null)
            #nameAndDescription: nameAndDescription,
          if (createdAt != null) #createdAt: createdAt,
          if (isActive != null) #isActive: isActive,
        }),
      );
  @override
  FakeTemplateItem $make(CopyWithData data) => FakeTemplateItem(
        id: data.get(#id, or: $value.id),
        nameAndDescription: data.get(
          #nameAndDescription,
          or: $value.nameAndDescription,
        ),
        createdAt: data.get(#createdAt, or: $value.createdAt),
        isActive: data.get(#isActive, or: $value.isActive),
      );

  @override
  FakeTemplateItemCopyWith<$R2, FakeTemplateItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) =>
      _FakeTemplateItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
