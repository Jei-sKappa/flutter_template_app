// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'template_item.dart';

class TemplateItemMapper extends ClassMapperBase<TemplateItem> {
  TemplateItemMapper._();

  static TemplateItemMapper? _instance;
  static TemplateItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TemplateItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TemplateItem';

  static int _$id(TemplateItem v) => v.id;
  static const Field<TemplateItem, int> _f$id = Field('id', _$id);
  static String _$name(TemplateItem v) => v.name;
  static const Field<TemplateItem, String> _f$name = Field('name', _$name);
  static String _$description(TemplateItem v) => v.description;
  static const Field<TemplateItem, String> _f$description = Field(
    'description',
    _$description,
  );
  static DateTime _$createdAt(TemplateItem v) => v.createdAt;
  static const Field<TemplateItem, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
  );
  static bool _$isActive(TemplateItem v) => v.isActive;
  static const Field<TemplateItem, bool> _f$isActive = Field(
    'isActive',
    _$isActive,
  );

  @override
  final MappableFields<TemplateItem> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #createdAt: _f$createdAt,
    #isActive: _f$isActive,
  };

  static TemplateItem _instantiate(DecodingData data) {
    return TemplateItem(
      id: data.dec(_f$id),
      name: data.dec(_f$name),
      description: data.dec(_f$description),
      createdAt: data.dec(_f$createdAt),
      isActive: data.dec(_f$isActive),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TemplateItem fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TemplateItem>(map);
  }

  static TemplateItem fromJson(String json) {
    return ensureInitialized().decodeJson<TemplateItem>(json);
  }
}

mixin TemplateItemMappable {
  String toJson() {
    return TemplateItemMapper.ensureInitialized().encodeJson<TemplateItem>(
      this as TemplateItem,
    );
  }

  Map<String, dynamic> toMap() {
    return TemplateItemMapper.ensureInitialized().encodeMap<TemplateItem>(
      this as TemplateItem,
    );
  }

  TemplateItemCopyWith<TemplateItem, TemplateItem, TemplateItem> get copyWith =>
      _TemplateItemCopyWithImpl<TemplateItem, TemplateItem>(
        this as TemplateItem,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TemplateItemMapper.ensureInitialized().stringifyValue(
      this as TemplateItem,
    );
  }

  @override
  bool operator ==(Object other) {
    return TemplateItemMapper.ensureInitialized().equalsValue(
      this as TemplateItem,
      other,
    );
  }

  @override
  int get hashCode {
    return TemplateItemMapper.ensureInitialized().hashValue(
      this as TemplateItem,
    );
  }
}

extension TemplateItemValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TemplateItem, $Out> {
  TemplateItemCopyWith<$R, TemplateItem, $Out> get $asTemplateItem =>
      $base.as((v, t, t2) => _TemplateItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TemplateItemCopyWith<$R, $In extends TemplateItem, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    bool? isActive,
  });
  TemplateItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TemplateItemCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TemplateItem, $Out>
    implements TemplateItemCopyWith<$R, TemplateItem, $Out> {
  _TemplateItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TemplateItem> $mapper =
      TemplateItemMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? name,
    String? description,
    DateTime? createdAt,
    bool? isActive,
  }) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (name != null) #name: name,
          if (description != null) #description: description,
          if (createdAt != null) #createdAt: createdAt,
          if (isActive != null) #isActive: isActive,
        }),
      );
  @override
  TemplateItem $make(CopyWithData data) => TemplateItem(
        id: data.get(#id, or: $value.id),
        name: data.get(#name, or: $value.name),
        description: data.get(#description, or: $value.description),
        createdAt: data.get(#createdAt, or: $value.createdAt),
        isActive: data.get(#isActive, or: $value.isActive),
      );

  @override
  TemplateItemCopyWith<$R2, TemplateItem, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) =>
      _TemplateItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
