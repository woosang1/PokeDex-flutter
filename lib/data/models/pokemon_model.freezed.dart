// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonTypeModel> get types => throw _privateConstructorUsedError;
  PokemonSpritesModel get sprites => throw _privateConstructorUsedError;
  List<PokemonStatModel> get stats => throw _privateConstructorUsedError;
  List<PokemonAbilityModel> get abilities => throw _privateConstructorUsedError;

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
    PokemonModel value,
    $Res Function(PokemonModel) then,
  ) = _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call({
    int id,
    String name,
    int height,
    int weight,
    List<PokemonTypeModel> types,
    PokemonSpritesModel sprites,
    List<PokemonStatModel> stats,
    List<PokemonAbilityModel> abilities,
  });

  $PokemonSpritesModelCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? sprites = null,
    Object? stats = null,
    Object? abilities = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
            weight: null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as int,
            types: null == types
                ? _value.types
                : types // ignore: cast_nullable_to_non_nullable
                      as List<PokemonTypeModel>,
            sprites: null == sprites
                ? _value.sprites
                : sprites // ignore: cast_nullable_to_non_nullable
                      as PokemonSpritesModel,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as List<PokemonStatModel>,
            abilities: null == abilities
                ? _value.abilities
                : abilities // ignore: cast_nullable_to_non_nullable
                      as List<PokemonAbilityModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesModelCopyWith<$Res> get sprites {
    return $PokemonSpritesModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonModelImplCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$PokemonModelImplCopyWith(
    _$PokemonModelImpl value,
    $Res Function(_$PokemonModelImpl) then,
  ) = __$$PokemonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    int height,
    int weight,
    List<PokemonTypeModel> types,
    PokemonSpritesModel sprites,
    List<PokemonStatModel> stats,
    List<PokemonAbilityModel> abilities,
  });

  @override
  $PokemonSpritesModelCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonModelImplCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$PokemonModelImpl>
    implements _$$PokemonModelImplCopyWith<$Res> {
  __$$PokemonModelImplCopyWithImpl(
    _$PokemonModelImpl _value,
    $Res Function(_$PokemonModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? sprites = null,
    Object? stats = null,
    Object? abilities = null,
  }) {
    return _then(
      _$PokemonModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        weight: null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as int,
        types: null == types
            ? _value._types
            : types // ignore: cast_nullable_to_non_nullable
                  as List<PokemonTypeModel>,
        sprites: null == sprites
            ? _value.sprites
            : sprites // ignore: cast_nullable_to_non_nullable
                  as PokemonSpritesModel,
        stats: null == stats
            ? _value._stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as List<PokemonStatModel>,
        abilities: null == abilities
            ? _value._abilities
            : abilities // ignore: cast_nullable_to_non_nullable
                  as List<PokemonAbilityModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonModelImpl extends _PokemonModel {
  const _$PokemonModelImpl({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required final List<PokemonTypeModel> types,
    required this.sprites,
    required final List<PokemonStatModel> stats,
    required final List<PokemonAbilityModel> abilities,
  }) : _types = types,
       _stats = stats,
       _abilities = abilities,
       super._();

  factory _$PokemonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonTypeModel> _types;
  @override
  List<PokemonTypeModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final PokemonSpritesModel sprites;
  final List<PokemonStatModel> _stats;
  @override
  List<PokemonStatModel> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<PokemonAbilityModel> _abilities;
  @override
  List<PokemonAbilityModel> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, sprites: $sprites, stats: $stats, abilities: $abilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(
              other._abilities,
              _abilities,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    height,
    weight,
    const DeepCollectionEquality().hash(_types),
    sprites,
    const DeepCollectionEquality().hash(_stats),
    const DeepCollectionEquality().hash(_abilities),
  );

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      __$$PokemonModelImplCopyWithImpl<_$PokemonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonModelImplToJson(this);
  }
}

abstract class _PokemonModel extends PokemonModel {
  const factory _PokemonModel({
    required final int id,
    required final String name,
    required final int height,
    required final int weight,
    required final List<PokemonTypeModel> types,
    required final PokemonSpritesModel sprites,
    required final List<PokemonStatModel> stats,
    required final List<PokemonAbilityModel> abilities,
  }) = _$PokemonModelImpl;
  const _PokemonModel._() : super._();

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$PokemonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonTypeModel> get types;
  @override
  PokemonSpritesModel get sprites;
  @override
  List<PokemonStatModel> get stats;
  @override
  List<PokemonAbilityModel> get abilities;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeModel _$PokemonTypeModelFromJson(Map<String, dynamic> json) {
  return _PokemonTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeModel {
  int get slot => throw _privateConstructorUsedError;
  PokemonTypeDetailModel get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeModelCopyWith<PokemonTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeModelCopyWith<$Res> {
  factory $PokemonTypeModelCopyWith(
    PokemonTypeModel value,
    $Res Function(PokemonTypeModel) then,
  ) = _$PokemonTypeModelCopyWithImpl<$Res, PokemonTypeModel>;
  @useResult
  $Res call({int slot, PokemonTypeDetailModel type});

  $PokemonTypeDetailModelCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeModelCopyWithImpl<$Res, $Val extends PokemonTypeModel>
    implements $PokemonTypeModelCopyWith<$Res> {
  _$PokemonTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slot = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            slot: null == slot
                ? _value.slot
                : slot // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as PokemonTypeDetailModel,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeDetailModelCopyWith<$Res> get type {
    return $PokemonTypeDetailModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeModelImplCopyWith<$Res>
    implements $PokemonTypeModelCopyWith<$Res> {
  factory _$$PokemonTypeModelImplCopyWith(
    _$PokemonTypeModelImpl value,
    $Res Function(_$PokemonTypeModelImpl) then,
  ) = __$$PokemonTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, PokemonTypeDetailModel type});

  @override
  $PokemonTypeDetailModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeModelImplCopyWithImpl<$Res>
    extends _$PokemonTypeModelCopyWithImpl<$Res, _$PokemonTypeModelImpl>
    implements _$$PokemonTypeModelImplCopyWith<$Res> {
  __$$PokemonTypeModelImplCopyWithImpl(
    _$PokemonTypeModelImpl _value,
    $Res Function(_$PokemonTypeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slot = null, Object? type = null}) {
    return _then(
      _$PokemonTypeModelImpl(
        slot: null == slot
            ? _value.slot
            : slot // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PokemonTypeDetailModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeModelImpl extends _PokemonTypeModel {
  const _$PokemonTypeModelImpl({required this.slot, required this.type})
    : super._();

  factory _$PokemonTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeModelImplFromJson(json);

  @override
  final int slot;
  @override
  final PokemonTypeDetailModel type;

  @override
  String toString() {
    return 'PokemonTypeModel(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      __$$PokemonTypeModelImplCopyWithImpl<_$PokemonTypeModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeModelImplToJson(this);
  }
}

abstract class _PokemonTypeModel extends PokemonTypeModel {
  const factory _PokemonTypeModel({
    required final int slot,
    required final PokemonTypeDetailModel type,
  }) = _$PokemonTypeModelImpl;
  const _PokemonTypeModel._() : super._();

  factory _PokemonTypeModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeModelImpl.fromJson;

  @override
  int get slot;
  @override
  PokemonTypeDetailModel get type;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeDetailModel _$PokemonTypeDetailModelFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonTypeDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeDetailModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeDetailModelCopyWith<PokemonTypeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDetailModelCopyWith<$Res> {
  factory $PokemonTypeDetailModelCopyWith(
    PokemonTypeDetailModel value,
    $Res Function(PokemonTypeDetailModel) then,
  ) = _$PokemonTypeDetailModelCopyWithImpl<$Res, PokemonTypeDetailModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonTypeDetailModelCopyWithImpl<
  $Res,
  $Val extends PokemonTypeDetailModel
>
    implements $PokemonTypeDetailModelCopyWith<$Res> {
  _$PokemonTypeDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonTypeDetailModelImplCopyWith<$Res>
    implements $PokemonTypeDetailModelCopyWith<$Res> {
  factory _$$PokemonTypeDetailModelImplCopyWith(
    _$PokemonTypeDetailModelImpl value,
    $Res Function(_$PokemonTypeDetailModelImpl) then,
  ) = __$$PokemonTypeDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonTypeDetailModelImplCopyWithImpl<$Res>
    extends
        _$PokemonTypeDetailModelCopyWithImpl<$Res, _$PokemonTypeDetailModelImpl>
    implements _$$PokemonTypeDetailModelImplCopyWith<$Res> {
  __$$PokemonTypeDetailModelImplCopyWithImpl(
    _$PokemonTypeDetailModelImpl _value,
    $Res Function(_$PokemonTypeDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonTypeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$PokemonTypeDetailModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeDetailModelImpl implements _PokemonTypeDetailModel {
  const _$PokemonTypeDetailModelImpl({required this.name, required this.url});

  factory _$PokemonTypeDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDetailModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonTypeDetailModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonTypeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDetailModelImplCopyWith<_$PokemonTypeDetailModelImpl>
  get copyWith =>
      __$$PokemonTypeDetailModelImplCopyWithImpl<_$PokemonTypeDetailModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDetailModelImplToJson(this);
  }
}

abstract class _PokemonTypeDetailModel implements PokemonTypeDetailModel {
  const factory _PokemonTypeDetailModel({
    required final String name,
    required final String url,
  }) = _$PokemonTypeDetailModelImpl;

  factory _PokemonTypeDetailModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDetailModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonTypeDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeDetailModelImplCopyWith<_$PokemonTypeDetailModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonSpritesModel _$PokemonSpritesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpritesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesModel {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;
  PokemonSpritesOtherModel? get other => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpritesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpritesModelCopyWith<PokemonSpritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesModelCopyWith<$Res> {
  factory $PokemonSpritesModelCopyWith(
    PokemonSpritesModel value,
    $Res Function(PokemonSpritesModel) then,
  ) = _$PokemonSpritesModelCopyWithImpl<$Res, PokemonSpritesModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    PokemonSpritesOtherModel? other,
  });

  $PokemonSpritesOtherModelCopyWith<$Res>? get other;
}

/// @nodoc
class _$PokemonSpritesModelCopyWithImpl<$Res, $Val extends PokemonSpritesModel>
    implements $PokemonSpritesModelCopyWith<$Res> {
  _$PokemonSpritesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
    Object? other = freezed,
  }) {
    return _then(
      _value.copyWith(
            frontDefault: freezed == frontDefault
                ? _value.frontDefault
                : frontDefault // ignore: cast_nullable_to_non_nullable
                      as String?,
            frontShiny: freezed == frontShiny
                ? _value.frontShiny
                : frontShiny // ignore: cast_nullable_to_non_nullable
                      as String?,
            other: freezed == other
                ? _value.other
                : other // ignore: cast_nullable_to_non_nullable
                      as PokemonSpritesOtherModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesOtherModelCopyWith<$Res>? get other {
    if (_value.other == null) {
      return null;
    }

    return $PokemonSpritesOtherModelCopyWith<$Res>(_value.other!, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpritesModelImplCopyWith<$Res>
    implements $PokemonSpritesModelCopyWith<$Res> {
  factory _$$PokemonSpritesModelImplCopyWith(
    _$PokemonSpritesModelImpl value,
    $Res Function(_$PokemonSpritesModelImpl) then,
  ) = __$$PokemonSpritesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    PokemonSpritesOtherModel? other,
  });

  @override
  $PokemonSpritesOtherModelCopyWith<$Res>? get other;
}

/// @nodoc
class __$$PokemonSpritesModelImplCopyWithImpl<$Res>
    extends _$PokemonSpritesModelCopyWithImpl<$Res, _$PokemonSpritesModelImpl>
    implements _$$PokemonSpritesModelImplCopyWith<$Res> {
  __$$PokemonSpritesModelImplCopyWithImpl(
    _$PokemonSpritesModelImpl _value,
    $Res Function(_$PokemonSpritesModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? frontShiny = freezed,
    Object? other = freezed,
  }) {
    return _then(
      _$PokemonSpritesModelImpl(
        frontDefault: freezed == frontDefault
            ? _value.frontDefault
            : frontDefault // ignore: cast_nullable_to_non_nullable
                  as String?,
        frontShiny: freezed == frontShiny
            ? _value.frontShiny
            : frontShiny // ignore: cast_nullable_to_non_nullable
                  as String?,
        other: freezed == other
            ? _value.other
            : other // ignore: cast_nullable_to_non_nullable
                  as PokemonSpritesOtherModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesModelImpl implements _PokemonSpritesModel {
  const _$PokemonSpritesModelImpl({
    @JsonKey(name: 'front_default') this.frontDefault,
    @JsonKey(name: 'front_shiny') this.frontShiny,
    this.other,
  });

  factory _$PokemonSpritesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesModelImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @override
  final PokemonSpritesOtherModel? other;

  @override
  String toString() {
    return 'PokemonSpritesModel(frontDefault: $frontDefault, frontShiny: $frontShiny, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, frontShiny, other);

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      __$$PokemonSpritesModelImplCopyWithImpl<_$PokemonSpritesModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesModelImplToJson(this);
  }
}

abstract class _PokemonSpritesModel implements PokemonSpritesModel {
  const factory _PokemonSpritesModel({
    @JsonKey(name: 'front_default') final String? frontDefault,
    @JsonKey(name: 'front_shiny') final String? frontShiny,
    final PokemonSpritesOtherModel? other,
  }) = _$PokemonSpritesModelImpl;

  factory _PokemonSpritesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesModelImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  PokemonSpritesOtherModel? get other;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpritesOtherModel _$PokemonSpritesOtherModelFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonSpritesOtherModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesOtherModel {
  @JsonKey(name: 'official-artwork')
  PokemonOfficialArtworkModel? get officialArtwork =>
      throw _privateConstructorUsedError;

  /// Serializes this PokemonSpritesOtherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpritesOtherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpritesOtherModelCopyWith<PokemonSpritesOtherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesOtherModelCopyWith<$Res> {
  factory $PokemonSpritesOtherModelCopyWith(
    PokemonSpritesOtherModel value,
    $Res Function(PokemonSpritesOtherModel) then,
  ) = _$PokemonSpritesOtherModelCopyWithImpl<$Res, PokemonSpritesOtherModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'official-artwork')
    PokemonOfficialArtworkModel? officialArtwork,
  });

  $PokemonOfficialArtworkModelCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class _$PokemonSpritesOtherModelCopyWithImpl<
  $Res,
  $Val extends PokemonSpritesOtherModel
>
    implements $PokemonSpritesOtherModelCopyWith<$Res> {
  _$PokemonSpritesOtherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpritesOtherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? officialArtwork = freezed}) {
    return _then(
      _value.copyWith(
            officialArtwork: freezed == officialArtwork
                ? _value.officialArtwork
                : officialArtwork // ignore: cast_nullable_to_non_nullable
                      as PokemonOfficialArtworkModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonSpritesOtherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonOfficialArtworkModelCopyWith<$Res>? get officialArtwork {
    if (_value.officialArtwork == null) {
      return null;
    }

    return $PokemonOfficialArtworkModelCopyWith<$Res>(_value.officialArtwork!, (
      value,
    ) {
      return _then(_value.copyWith(officialArtwork: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpritesOtherModelImplCopyWith<$Res>
    implements $PokemonSpritesOtherModelCopyWith<$Res> {
  factory _$$PokemonSpritesOtherModelImplCopyWith(
    _$PokemonSpritesOtherModelImpl value,
    $Res Function(_$PokemonSpritesOtherModelImpl) then,
  ) = __$$PokemonSpritesOtherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'official-artwork')
    PokemonOfficialArtworkModel? officialArtwork,
  });

  @override
  $PokemonOfficialArtworkModelCopyWith<$Res>? get officialArtwork;
}

/// @nodoc
class __$$PokemonSpritesOtherModelImplCopyWithImpl<$Res>
    extends
        _$PokemonSpritesOtherModelCopyWithImpl<
          $Res,
          _$PokemonSpritesOtherModelImpl
        >
    implements _$$PokemonSpritesOtherModelImplCopyWith<$Res> {
  __$$PokemonSpritesOtherModelImplCopyWithImpl(
    _$PokemonSpritesOtherModelImpl _value,
    $Res Function(_$PokemonSpritesOtherModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonSpritesOtherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? officialArtwork = freezed}) {
    return _then(
      _$PokemonSpritesOtherModelImpl(
        officialArtwork: freezed == officialArtwork
            ? _value.officialArtwork
            : officialArtwork // ignore: cast_nullable_to_non_nullable
                  as PokemonOfficialArtworkModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesOtherModelImpl implements _PokemonSpritesOtherModel {
  const _$PokemonSpritesOtherModelImpl({
    @JsonKey(name: 'official-artwork') this.officialArtwork,
  });

  factory _$PokemonSpritesOtherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesOtherModelImplFromJson(json);

  @override
  @JsonKey(name: 'official-artwork')
  final PokemonOfficialArtworkModel? officialArtwork;

  @override
  String toString() {
    return 'PokemonSpritesOtherModel(officialArtwork: $officialArtwork)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesOtherModelImpl &&
            (identical(other.officialArtwork, officialArtwork) ||
                other.officialArtwork == officialArtwork));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, officialArtwork);

  /// Create a copy of PokemonSpritesOtherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesOtherModelImplCopyWith<_$PokemonSpritesOtherModelImpl>
  get copyWith =>
      __$$PokemonSpritesOtherModelImplCopyWithImpl<
        _$PokemonSpritesOtherModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesOtherModelImplToJson(this);
  }
}

abstract class _PokemonSpritesOtherModel implements PokemonSpritesOtherModel {
  const factory _PokemonSpritesOtherModel({
    @JsonKey(name: 'official-artwork')
    final PokemonOfficialArtworkModel? officialArtwork,
  }) = _$PokemonSpritesOtherModelImpl;

  factory _PokemonSpritesOtherModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesOtherModelImpl.fromJson;

  @override
  @JsonKey(name: 'official-artwork')
  PokemonOfficialArtworkModel? get officialArtwork;

  /// Create a copy of PokemonSpritesOtherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesOtherModelImplCopyWith<_$PokemonSpritesOtherModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonOfficialArtworkModel _$PokemonOfficialArtworkModelFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonOfficialArtworkModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonOfficialArtworkModel {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;

  /// Serializes this PokemonOfficialArtworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonOfficialArtworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonOfficialArtworkModelCopyWith<PokemonOfficialArtworkModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonOfficialArtworkModelCopyWith<$Res> {
  factory $PokemonOfficialArtworkModelCopyWith(
    PokemonOfficialArtworkModel value,
    $Res Function(PokemonOfficialArtworkModel) then,
  ) =
      _$PokemonOfficialArtworkModelCopyWithImpl<
        $Res,
        PokemonOfficialArtworkModel
      >;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class _$PokemonOfficialArtworkModelCopyWithImpl<
  $Res,
  $Val extends PokemonOfficialArtworkModel
>
    implements $PokemonOfficialArtworkModelCopyWith<$Res> {
  _$PokemonOfficialArtworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonOfficialArtworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? frontDefault = freezed}) {
    return _then(
      _value.copyWith(
            frontDefault: freezed == frontDefault
                ? _value.frontDefault
                : frontDefault // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonOfficialArtworkModelImplCopyWith<$Res>
    implements $PokemonOfficialArtworkModelCopyWith<$Res> {
  factory _$$PokemonOfficialArtworkModelImplCopyWith(
    _$PokemonOfficialArtworkModelImpl value,
    $Res Function(_$PokemonOfficialArtworkModelImpl) then,
  ) = __$$PokemonOfficialArtworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String? frontDefault});
}

/// @nodoc
class __$$PokemonOfficialArtworkModelImplCopyWithImpl<$Res>
    extends
        _$PokemonOfficialArtworkModelCopyWithImpl<
          $Res,
          _$PokemonOfficialArtworkModelImpl
        >
    implements _$$PokemonOfficialArtworkModelImplCopyWith<$Res> {
  __$$PokemonOfficialArtworkModelImplCopyWithImpl(
    _$PokemonOfficialArtworkModelImpl _value,
    $Res Function(_$PokemonOfficialArtworkModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonOfficialArtworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? frontDefault = freezed}) {
    return _then(
      _$PokemonOfficialArtworkModelImpl(
        frontDefault: freezed == frontDefault
            ? _value.frontDefault
            : frontDefault // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonOfficialArtworkModelImpl
    implements _PokemonOfficialArtworkModel {
  const _$PokemonOfficialArtworkModelImpl({
    @JsonKey(name: 'front_default') this.frontDefault,
  });

  factory _$PokemonOfficialArtworkModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PokemonOfficialArtworkModelImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @override
  String toString() {
    return 'PokemonOfficialArtworkModel(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonOfficialArtworkModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  /// Create a copy of PokemonOfficialArtworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonOfficialArtworkModelImplCopyWith<_$PokemonOfficialArtworkModelImpl>
  get copyWith =>
      __$$PokemonOfficialArtworkModelImplCopyWithImpl<
        _$PokemonOfficialArtworkModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonOfficialArtworkModelImplToJson(this);
  }
}

abstract class _PokemonOfficialArtworkModel
    implements PokemonOfficialArtworkModel {
  const factory _PokemonOfficialArtworkModel({
    @JsonKey(name: 'front_default') final String? frontDefault,
  }) = _$PokemonOfficialArtworkModelImpl;

  factory _PokemonOfficialArtworkModel.fromJson(Map<String, dynamic> json) =
      _$PokemonOfficialArtworkModelImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;

  /// Create a copy of PokemonOfficialArtworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonOfficialArtworkModelImplCopyWith<_$PokemonOfficialArtworkModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonStatModel _$PokemonStatModelFromJson(Map<String, dynamic> json) {
  return _PokemonStatModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatModel {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  PokemonStatDetailModel get stat => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatModelCopyWith<PokemonStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatModelCopyWith<$Res> {
  factory $PokemonStatModelCopyWith(
    PokemonStatModel value,
    $Res Function(PokemonStatModel) then,
  ) = _$PokemonStatModelCopyWithImpl<$Res, PokemonStatModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'base_stat') int baseStat,
    int effort,
    PokemonStatDetailModel stat,
  });

  $PokemonStatDetailModelCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatModelCopyWithImpl<$Res, $Val extends PokemonStatModel>
    implements $PokemonStatModelCopyWith<$Res> {
  _$PokemonStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(
      _value.copyWith(
            baseStat: null == baseStat
                ? _value.baseStat
                : baseStat // ignore: cast_nullable_to_non_nullable
                      as int,
            effort: null == effort
                ? _value.effort
                : effort // ignore: cast_nullable_to_non_nullable
                      as int,
            stat: null == stat
                ? _value.stat
                : stat // ignore: cast_nullable_to_non_nullable
                      as PokemonStatDetailModel,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonStatDetailModelCopyWith<$Res> get stat {
    return $PokemonStatDetailModelCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatModelImplCopyWith<$Res>
    implements $PokemonStatModelCopyWith<$Res> {
  factory _$$PokemonStatModelImplCopyWith(
    _$PokemonStatModelImpl value,
    $Res Function(_$PokemonStatModelImpl) then,
  ) = __$$PokemonStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'base_stat') int baseStat,
    int effort,
    PokemonStatDetailModel stat,
  });

  @override
  $PokemonStatDetailModelCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatModelImplCopyWithImpl<$Res>
    extends _$PokemonStatModelCopyWithImpl<$Res, _$PokemonStatModelImpl>
    implements _$$PokemonStatModelImplCopyWith<$Res> {
  __$$PokemonStatModelImplCopyWithImpl(
    _$PokemonStatModelImpl _value,
    $Res Function(_$PokemonStatModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(
      _$PokemonStatModelImpl(
        baseStat: null == baseStat
            ? _value.baseStat
            : baseStat // ignore: cast_nullable_to_non_nullable
                  as int,
        effort: null == effort
            ? _value.effort
            : effort // ignore: cast_nullable_to_non_nullable
                  as int,
        stat: null == stat
            ? _value.stat
            : stat // ignore: cast_nullable_to_non_nullable
                  as PokemonStatDetailModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatModelImpl extends _PokemonStatModel {
  const _$PokemonStatModelImpl({
    @JsonKey(name: 'base_stat') required this.baseStat,
    required this.effort,
    required this.stat,
  }) : super._();

  factory _$PokemonStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatModelImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final int effort;
  @override
  final PokemonStatDetailModel stat;

  @override
  String toString() {
    return 'PokemonStatModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatModelImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatModelImplCopyWith<_$PokemonStatModelImpl> get copyWith =>
      __$$PokemonStatModelImplCopyWithImpl<_$PokemonStatModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatModelImplToJson(this);
  }
}

abstract class _PokemonStatModel extends PokemonStatModel {
  const factory _PokemonStatModel({
    @JsonKey(name: 'base_stat') required final int baseStat,
    required final int effort,
    required final PokemonStatDetailModel stat,
  }) = _$PokemonStatModelImpl;
  const _PokemonStatModel._() : super._();

  factory _PokemonStatModel.fromJson(Map<String, dynamic> json) =
      _$PokemonStatModelImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  int get effort;
  @override
  PokemonStatDetailModel get stat;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatModelImplCopyWith<_$PokemonStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStatDetailModel _$PokemonStatDetailModelFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonStatDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatDetailModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatDetailModelCopyWith<PokemonStatDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatDetailModelCopyWith<$Res> {
  factory $PokemonStatDetailModelCopyWith(
    PokemonStatDetailModel value,
    $Res Function(PokemonStatDetailModel) then,
  ) = _$PokemonStatDetailModelCopyWithImpl<$Res, PokemonStatDetailModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonStatDetailModelCopyWithImpl<
  $Res,
  $Val extends PokemonStatDetailModel
>
    implements $PokemonStatDetailModelCopyWith<$Res> {
  _$PokemonStatDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonStatDetailModelImplCopyWith<$Res>
    implements $PokemonStatDetailModelCopyWith<$Res> {
  factory _$$PokemonStatDetailModelImplCopyWith(
    _$PokemonStatDetailModelImpl value,
    $Res Function(_$PokemonStatDetailModelImpl) then,
  ) = __$$PokemonStatDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonStatDetailModelImplCopyWithImpl<$Res>
    extends
        _$PokemonStatDetailModelCopyWithImpl<$Res, _$PokemonStatDetailModelImpl>
    implements _$$PokemonStatDetailModelImplCopyWith<$Res> {
  __$$PokemonStatDetailModelImplCopyWithImpl(
    _$PokemonStatDetailModelImpl _value,
    $Res Function(_$PokemonStatDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonStatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$PokemonStatDetailModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatDetailModelImpl implements _PokemonStatDetailModel {
  const _$PokemonStatDetailModelImpl({required this.name, required this.url});

  factory _$PokemonStatDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatDetailModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonStatDetailModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonStatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatDetailModelImplCopyWith<_$PokemonStatDetailModelImpl>
  get copyWith =>
      __$$PokemonStatDetailModelImplCopyWithImpl<_$PokemonStatDetailModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatDetailModelImplToJson(this);
  }
}

abstract class _PokemonStatDetailModel implements PokemonStatDetailModel {
  const factory _PokemonStatDetailModel({
    required final String name,
    required final String url,
  }) = _$PokemonStatDetailModelImpl;

  factory _PokemonStatDetailModel.fromJson(Map<String, dynamic> json) =
      _$PokemonStatDetailModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonStatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatDetailModelImplCopyWith<_$PokemonStatDetailModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonAbilityModel _$PokemonAbilityModelFromJson(Map<String, dynamic> json) {
  return _PokemonAbilityModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityModel {
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;
  PokemonAbilityDetailModel get ability => throw _privateConstructorUsedError;

  /// Serializes this PokemonAbilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityModelCopyWith<PokemonAbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityModelCopyWith<$Res> {
  factory $PokemonAbilityModelCopyWith(
    PokemonAbilityModel value,
    $Res Function(PokemonAbilityModel) then,
  ) = _$PokemonAbilityModelCopyWithImpl<$Res, PokemonAbilityModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'is_hidden') bool isHidden,
    int slot,
    PokemonAbilityDetailModel ability,
  });

  $PokemonAbilityDetailModelCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityModelCopyWithImpl<$Res, $Val extends PokemonAbilityModel>
    implements $PokemonAbilityModelCopyWith<$Res> {
  _$PokemonAbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(
      _value.copyWith(
            isHidden: null == isHidden
                ? _value.isHidden
                : isHidden // ignore: cast_nullable_to_non_nullable
                      as bool,
            slot: null == slot
                ? _value.slot
                : slot // ignore: cast_nullable_to_non_nullable
                      as int,
            ability: null == ability
                ? _value.ability
                : ability // ignore: cast_nullable_to_non_nullable
                      as PokemonAbilityDetailModel,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonAbilityDetailModelCopyWith<$Res> get ability {
    return $PokemonAbilityDetailModelCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonAbilityModelImplCopyWith<$Res>
    implements $PokemonAbilityModelCopyWith<$Res> {
  factory _$$PokemonAbilityModelImplCopyWith(
    _$PokemonAbilityModelImpl value,
    $Res Function(_$PokemonAbilityModelImpl) then,
  ) = __$$PokemonAbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is_hidden') bool isHidden,
    int slot,
    PokemonAbilityDetailModel ability,
  });

  @override
  $PokemonAbilityDetailModelCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokemonAbilityModelImplCopyWithImpl<$Res>
    extends _$PokemonAbilityModelCopyWithImpl<$Res, _$PokemonAbilityModelImpl>
    implements _$$PokemonAbilityModelImplCopyWith<$Res> {
  __$$PokemonAbilityModelImplCopyWithImpl(
    _$PokemonAbilityModelImpl _value,
    $Res Function(_$PokemonAbilityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? slot = null,
    Object? ability = null,
  }) {
    return _then(
      _$PokemonAbilityModelImpl(
        isHidden: null == isHidden
            ? _value.isHidden
            : isHidden // ignore: cast_nullable_to_non_nullable
                  as bool,
        slot: null == slot
            ? _value.slot
            : slot // ignore: cast_nullable_to_non_nullable
                  as int,
        ability: null == ability
            ? _value.ability
            : ability // ignore: cast_nullable_to_non_nullable
                  as PokemonAbilityDetailModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityModelImpl extends _PokemonAbilityModel {
  const _$PokemonAbilityModelImpl({
    @JsonKey(name: 'is_hidden') required this.isHidden,
    required this.slot,
    required this.ability,
  }) : super._();

  factory _$PokemonAbilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityModelImplFromJson(json);

  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;
  @override
  final PokemonAbilityDetailModel ability;

  @override
  String toString() {
    return 'PokemonAbilityModel(isHidden: $isHidden, slot: $slot, ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityModelImpl &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHidden, slot, ability);

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      __$$PokemonAbilityModelImplCopyWithImpl<_$PokemonAbilityModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityModelImplToJson(this);
  }
}

abstract class _PokemonAbilityModel extends PokemonAbilityModel {
  const factory _PokemonAbilityModel({
    @JsonKey(name: 'is_hidden') required final bool isHidden,
    required final int slot,
    required final PokemonAbilityDetailModel ability,
  }) = _$PokemonAbilityModelImpl;
  const _PokemonAbilityModel._() : super._();

  factory _PokemonAbilityModel.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityModelImpl.fromJson;

  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  int get slot;
  @override
  PokemonAbilityDetailModel get ability;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonAbilityDetailModel _$PokemonAbilityDetailModelFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonAbilityDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityDetailModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonAbilityDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityDetailModelCopyWith<PokemonAbilityDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityDetailModelCopyWith<$Res> {
  factory $PokemonAbilityDetailModelCopyWith(
    PokemonAbilityDetailModel value,
    $Res Function(PokemonAbilityDetailModel) then,
  ) = _$PokemonAbilityDetailModelCopyWithImpl<$Res, PokemonAbilityDetailModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonAbilityDetailModelCopyWithImpl<
  $Res,
  $Val extends PokemonAbilityDetailModel
>
    implements $PokemonAbilityDetailModelCopyWith<$Res> {
  _$PokemonAbilityDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonAbilityDetailModelImplCopyWith<$Res>
    implements $PokemonAbilityDetailModelCopyWith<$Res> {
  factory _$$PokemonAbilityDetailModelImplCopyWith(
    _$PokemonAbilityDetailModelImpl value,
    $Res Function(_$PokemonAbilityDetailModelImpl) then,
  ) = __$$PokemonAbilityDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonAbilityDetailModelImplCopyWithImpl<$Res>
    extends
        _$PokemonAbilityDetailModelCopyWithImpl<
          $Res,
          _$PokemonAbilityDetailModelImpl
        >
    implements _$$PokemonAbilityDetailModelImplCopyWith<$Res> {
  __$$PokemonAbilityDetailModelImplCopyWithImpl(
    _$PokemonAbilityDetailModelImpl _value,
    $Res Function(_$PokemonAbilityDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonAbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$PokemonAbilityDetailModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityDetailModelImpl implements _PokemonAbilityDetailModel {
  const _$PokemonAbilityDetailModelImpl({
    required this.name,
    required this.url,
  });

  factory _$PokemonAbilityDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityDetailModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonAbilityDetailModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonAbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityDetailModelImplCopyWith<_$PokemonAbilityDetailModelImpl>
  get copyWith =>
      __$$PokemonAbilityDetailModelImplCopyWithImpl<
        _$PokemonAbilityDetailModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityDetailModelImplToJson(this);
  }
}

abstract class _PokemonAbilityDetailModel implements PokemonAbilityDetailModel {
  const factory _PokemonAbilityDetailModel({
    required final String name,
    required final String url,
  }) = _$PokemonAbilityDetailModelImpl;

  factory _PokemonAbilityDetailModel.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityDetailModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonAbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityDetailModelImplCopyWith<_$PokemonAbilityDetailModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonListResponseModel _$PokemonListResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListResponseModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonListItemModel> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListResponseModelCopyWith<PokemonListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseModelCopyWith<$Res> {
  factory $PokemonListResponseModelCopyWith(
    PokemonListResponseModel value,
    $Res Function(PokemonListResponseModel) then,
  ) = _$PokemonListResponseModelCopyWithImpl<$Res, PokemonListResponseModel>;
  @useResult
  $Res call({
    int count,
    String? next,
    String? previous,
    List<PokemonListItemModel> results,
  });
}

/// @nodoc
class _$PokemonListResponseModelCopyWithImpl<
  $Res,
  $Val extends PokemonListResponseModel
>
    implements $PokemonListResponseModelCopyWith<$Res> {
  _$PokemonListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as String?,
            previous: freezed == previous
                ? _value.previous
                : previous // ignore: cast_nullable_to_non_nullable
                      as String?,
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<PokemonListItemModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonListResponseModelImplCopyWith<$Res>
    implements $PokemonListResponseModelCopyWith<$Res> {
  factory _$$PokemonListResponseModelImplCopyWith(
    _$PokemonListResponseModelImpl value,
    $Res Function(_$PokemonListResponseModelImpl) then,
  ) = __$$PokemonListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int count,
    String? next,
    String? previous,
    List<PokemonListItemModel> results,
  });
}

/// @nodoc
class __$$PokemonListResponseModelImplCopyWithImpl<$Res>
    extends
        _$PokemonListResponseModelCopyWithImpl<
          $Res,
          _$PokemonListResponseModelImpl
        >
    implements _$$PokemonListResponseModelImplCopyWith<$Res> {
  __$$PokemonListResponseModelImplCopyWithImpl(
    _$PokemonListResponseModelImpl _value,
    $Res Function(_$PokemonListResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(
      _$PokemonListResponseModelImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as String?,
        previous: freezed == previous
            ? _value.previous
            : previous // ignore: cast_nullable_to_non_nullable
                  as String?,
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<PokemonListItemModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListResponseModelImpl extends _PokemonListResponseModel {
  const _$PokemonListResponseModelImpl({
    required this.count,
    this.next,
    this.previous,
    required final List<PokemonListItemModel> results,
  }) : _results = results,
       super._();

  factory _$PokemonListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListResponseModelImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonListItemModel> _results;
  @override
  List<PokemonListItemModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListResponseModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    next,
    previous,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of PokemonListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListResponseModelImplCopyWith<_$PokemonListResponseModelImpl>
  get copyWith =>
      __$$PokemonListResponseModelImplCopyWithImpl<
        _$PokemonListResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListResponseModelImplToJson(this);
  }
}

abstract class _PokemonListResponseModel extends PokemonListResponseModel {
  const factory _PokemonListResponseModel({
    required final int count,
    final String? next,
    final String? previous,
    required final List<PokemonListItemModel> results,
  }) = _$PokemonListResponseModelImpl;
  const _PokemonListResponseModel._() : super._();

  factory _PokemonListResponseModel.fromJson(Map<String, dynamic> json) =
      _$PokemonListResponseModelImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonListItemModel> get results;

  /// Create a copy of PokemonListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListResponseModelImplCopyWith<_$PokemonListResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonListItemModel _$PokemonListItemModelFromJson(Map<String, dynamic> json) {
  return _PokemonListItemModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListItemModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonListItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListItemModelCopyWith<PokemonListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListItemModelCopyWith<$Res> {
  factory $PokemonListItemModelCopyWith(
    PokemonListItemModel value,
    $Res Function(PokemonListItemModel) then,
  ) = _$PokemonListItemModelCopyWithImpl<$Res, PokemonListItemModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListItemModelCopyWithImpl<
  $Res,
  $Val extends PokemonListItemModel
>
    implements $PokemonListItemModelCopyWith<$Res> {
  _$PokemonListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonListItemModelImplCopyWith<$Res>
    implements $PokemonListItemModelCopyWith<$Res> {
  factory _$$PokemonListItemModelImplCopyWith(
    _$PokemonListItemModelImpl value,
    $Res Function(_$PokemonListItemModelImpl) then,
  ) = __$$PokemonListItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonListItemModelImplCopyWithImpl<$Res>
    extends _$PokemonListItemModelCopyWithImpl<$Res, _$PokemonListItemModelImpl>
    implements _$$PokemonListItemModelImplCopyWith<$Res> {
  __$$PokemonListItemModelImplCopyWithImpl(
    _$PokemonListItemModelImpl _value,
    $Res Function(_$PokemonListItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$PokemonListItemModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListItemModelImpl extends _PokemonListItemModel {
  const _$PokemonListItemModelImpl({required this.name, required this.url})
    : super._();

  factory _$PokemonListItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListItemModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonListItemModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListItemModelImplCopyWith<_$PokemonListItemModelImpl>
  get copyWith =>
      __$$PokemonListItemModelImplCopyWithImpl<_$PokemonListItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListItemModelImplToJson(this);
  }
}

abstract class _PokemonListItemModel extends PokemonListItemModel {
  const factory _PokemonListItemModel({
    required final String name,
    required final String url,
  }) = _$PokemonListItemModelImpl;
  const _PokemonListItemModel._() : super._();

  factory _PokemonListItemModel.fromJson(Map<String, dynamic> json) =
      _$PokemonListItemModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListItemModelImplCopyWith<_$PokemonListItemModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
