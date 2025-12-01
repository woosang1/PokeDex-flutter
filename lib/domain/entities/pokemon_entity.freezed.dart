// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonTypeEntity> get types => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<PokemonStatEntity> get stats => throw _privateConstructorUsedError;
  List<PokemonAbilityEntity> get abilities =>
      throw _privateConstructorUsedError;

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
    PokemonEntity value,
    $Res Function(PokemonEntity) then,
  ) = _$PokemonEntityCopyWithImpl<$Res, PokemonEntity>;
  @useResult
  $Res call({
    int id,
    String name,
    int height,
    int weight,
    List<PokemonTypeEntity> types,
    String imageUrl,
    List<PokemonStatEntity> stats,
    List<PokemonAbilityEntity> abilities,
  });
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res, $Val extends PokemonEntity>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? imageUrl = null,
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
                      as List<PokemonTypeEntity>,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as List<PokemonStatEntity>,
            abilities: null == abilities
                ? _value.abilities
                : abilities // ignore: cast_nullable_to_non_nullable
                      as List<PokemonAbilityEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonEntityImplCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$$PokemonEntityImplCopyWith(
    _$PokemonEntityImpl value,
    $Res Function(_$PokemonEntityImpl) then,
  ) = __$$PokemonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    int height,
    int weight,
    List<PokemonTypeEntity> types,
    String imageUrl,
    List<PokemonStatEntity> stats,
    List<PokemonAbilityEntity> abilities,
  });
}

/// @nodoc
class __$$PokemonEntityImplCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res, _$PokemonEntityImpl>
    implements _$$PokemonEntityImplCopyWith<$Res> {
  __$$PokemonEntityImplCopyWithImpl(
    _$PokemonEntityImpl _value,
    $Res Function(_$PokemonEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? imageUrl = null,
    Object? stats = null,
    Object? abilities = null,
  }) {
    return _then(
      _$PokemonEntityImpl(
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
                  as List<PokemonTypeEntity>,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        stats: null == stats
            ? _value._stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as List<PokemonStatEntity>,
        abilities: null == abilities
            ? _value._abilities
            : abilities // ignore: cast_nullable_to_non_nullable
                  as List<PokemonAbilityEntity>,
      ),
    );
  }
}

/// @nodoc

class _$PokemonEntityImpl extends _PokemonEntity {
  const _$PokemonEntityImpl({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required final List<PokemonTypeEntity> types,
    required this.imageUrl,
    required final List<PokemonStatEntity> stats,
    required final List<PokemonAbilityEntity> abilities,
  }) : _types = types,
       _stats = stats,
       _abilities = abilities,
       super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonTypeEntity> _types;
  @override
  List<PokemonTypeEntity> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final String imageUrl;
  final List<PokemonStatEntity> _stats;
  @override
  List<PokemonStatEntity> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<PokemonAbilityEntity> _abilities;
  @override
  List<PokemonAbilityEntity> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  String toString() {
    return 'PokemonEntity(id: $id, name: $name, height: $height, weight: $weight, types: $types, imageUrl: $imageUrl, stats: $stats, abilities: $abilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(
              other._abilities,
              _abilities,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    height,
    weight,
    const DeepCollectionEquality().hash(_types),
    imageUrl,
    const DeepCollectionEquality().hash(_stats),
    const DeepCollectionEquality().hash(_abilities),
  );

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      __$$PokemonEntityImplCopyWithImpl<_$PokemonEntityImpl>(this, _$identity);
}

abstract class _PokemonEntity extends PokemonEntity {
  const factory _PokemonEntity({
    required final int id,
    required final String name,
    required final int height,
    required final int weight,
    required final List<PokemonTypeEntity> types,
    required final String imageUrl,
    required final List<PokemonStatEntity> stats,
    required final List<PokemonAbilityEntity> abilities,
  }) = _$PokemonEntityImpl;
  const _PokemonEntity._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonTypeEntity> get types;
  @override
  String get imageUrl;
  @override
  List<PokemonStatEntity> get stats;
  @override
  List<PokemonAbilityEntity> get abilities;

  /// Create a copy of PokemonEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonEntityImplCopyWith<_$PokemonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonTypeEntity {
  int get slot => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeEntityCopyWith<PokemonTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeEntityCopyWith<$Res> {
  factory $PokemonTypeEntityCopyWith(
    PokemonTypeEntity value,
    $Res Function(PokemonTypeEntity) then,
  ) = _$PokemonTypeEntityCopyWithImpl<$Res, PokemonTypeEntity>;
  @useResult
  $Res call({int slot, String name, String url});
}

/// @nodoc
class _$PokemonTypeEntityCopyWithImpl<$Res, $Val extends PokemonTypeEntity>
    implements $PokemonTypeEntityCopyWith<$Res> {
  _$PokemonTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slot = null, Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            slot: null == slot
                ? _value.slot
                : slot // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$PokemonTypeEntityImplCopyWith<$Res>
    implements $PokemonTypeEntityCopyWith<$Res> {
  factory _$$PokemonTypeEntityImplCopyWith(
    _$PokemonTypeEntityImpl value,
    $Res Function(_$PokemonTypeEntityImpl) then,
  ) = __$$PokemonTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, String name, String url});
}

/// @nodoc
class __$$PokemonTypeEntityImplCopyWithImpl<$Res>
    extends _$PokemonTypeEntityCopyWithImpl<$Res, _$PokemonTypeEntityImpl>
    implements _$$PokemonTypeEntityImplCopyWith<$Res> {
  __$$PokemonTypeEntityImplCopyWithImpl(
    _$PokemonTypeEntityImpl _value,
    $Res Function(_$PokemonTypeEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slot = null, Object? name = null, Object? url = null}) {
    return _then(
      _$PokemonTypeEntityImpl(
        slot: null == slot
            ? _value.slot
            : slot // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$PokemonTypeEntityImpl implements _PokemonTypeEntity {
  const _$PokemonTypeEntityImpl({
    required this.slot,
    required this.name,
    required this.url,
  });

  @override
  final int slot;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonTypeEntity(slot: $slot, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeEntityImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slot, name, url);

  /// Create a copy of PokemonTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeEntityImplCopyWith<_$PokemonTypeEntityImpl> get copyWith =>
      __$$PokemonTypeEntityImplCopyWithImpl<_$PokemonTypeEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonTypeEntity implements PokemonTypeEntity {
  const factory _PokemonTypeEntity({
    required final int slot,
    required final String name,
    required final String url,
  }) = _$PokemonTypeEntityImpl;

  @override
  int get slot;
  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeEntityImplCopyWith<_$PokemonTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonStatEntity {
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatEntityCopyWith<PokemonStatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatEntityCopyWith<$Res> {
  factory $PokemonStatEntityCopyWith(
    PokemonStatEntity value,
    $Res Function(PokemonStatEntity) then,
  ) = _$PokemonStatEntityCopyWithImpl<$Res, PokemonStatEntity>;
  @useResult
  $Res call({int baseStat, int effort, String name, String url});
}

/// @nodoc
class _$PokemonStatEntityCopyWithImpl<$Res, $Val extends PokemonStatEntity>
    implements $PokemonStatEntityCopyWith<$Res> {
  _$PokemonStatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? name = null,
    Object? url = null,
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
abstract class _$$PokemonStatEntityImplCopyWith<$Res>
    implements $PokemonStatEntityCopyWith<$Res> {
  factory _$$PokemonStatEntityImplCopyWith(
    _$PokemonStatEntityImpl value,
    $Res Function(_$PokemonStatEntityImpl) then,
  ) = __$$PokemonStatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int baseStat, int effort, String name, String url});
}

/// @nodoc
class __$$PokemonStatEntityImplCopyWithImpl<$Res>
    extends _$PokemonStatEntityCopyWithImpl<$Res, _$PokemonStatEntityImpl>
    implements _$$PokemonStatEntityImplCopyWith<$Res> {
  __$$PokemonStatEntityImplCopyWithImpl(
    _$PokemonStatEntityImpl _value,
    $Res Function(_$PokemonStatEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(
      _$PokemonStatEntityImpl(
        baseStat: null == baseStat
            ? _value.baseStat
            : baseStat // ignore: cast_nullable_to_non_nullable
                  as int,
        effort: null == effort
            ? _value.effort
            : effort // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$PokemonStatEntityImpl implements _PokemonStatEntity {
  const _$PokemonStatEntityImpl({
    required this.baseStat,
    required this.effort,
    required this.name,
    required this.url,
  });

  @override
  final int baseStat;
  @override
  final int effort;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonStatEntity(baseStat: $baseStat, effort: $effort, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatEntityImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, name, url);

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatEntityImplCopyWith<_$PokemonStatEntityImpl> get copyWith =>
      __$$PokemonStatEntityImplCopyWithImpl<_$PokemonStatEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonStatEntity implements PokemonStatEntity {
  const factory _PokemonStatEntity({
    required final int baseStat,
    required final int effort,
    required final String name,
    required final String url,
  }) = _$PokemonStatEntityImpl;

  @override
  int get baseStat;
  @override
  int get effort;
  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonStatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatEntityImplCopyWith<_$PokemonStatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonAbilityEntity {
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityEntityCopyWith<PokemonAbilityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityEntityCopyWith<$Res> {
  factory $PokemonAbilityEntityCopyWith(
    PokemonAbilityEntity value,
    $Res Function(PokemonAbilityEntity) then,
  ) = _$PokemonAbilityEntityCopyWithImpl<$Res, PokemonAbilityEntity>;
  @useResult
  $Res call({bool isHidden, int slot, String name, String url});
}

/// @nodoc
class _$PokemonAbilityEntityCopyWithImpl<
  $Res,
  $Val extends PokemonAbilityEntity
>
    implements $PokemonAbilityEntityCopyWith<$Res> {
  _$PokemonAbilityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? slot = null,
    Object? name = null,
    Object? url = null,
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
abstract class _$$PokemonAbilityEntityImplCopyWith<$Res>
    implements $PokemonAbilityEntityCopyWith<$Res> {
  factory _$$PokemonAbilityEntityImplCopyWith(
    _$PokemonAbilityEntityImpl value,
    $Res Function(_$PokemonAbilityEntityImpl) then,
  ) = __$$PokemonAbilityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHidden, int slot, String name, String url});
}

/// @nodoc
class __$$PokemonAbilityEntityImplCopyWithImpl<$Res>
    extends _$PokemonAbilityEntityCopyWithImpl<$Res, _$PokemonAbilityEntityImpl>
    implements _$$PokemonAbilityEntityImplCopyWith<$Res> {
  __$$PokemonAbilityEntityImplCopyWithImpl(
    _$PokemonAbilityEntityImpl _value,
    $Res Function(_$PokemonAbilityEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonAbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? slot = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(
      _$PokemonAbilityEntityImpl(
        isHidden: null == isHidden
            ? _value.isHidden
            : isHidden // ignore: cast_nullable_to_non_nullable
                  as bool,
        slot: null == slot
            ? _value.slot
            : slot // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$PokemonAbilityEntityImpl implements _PokemonAbilityEntity {
  const _$PokemonAbilityEntityImpl({
    required this.isHidden,
    required this.slot,
    required this.name,
    required this.url,
  });

  @override
  final bool isHidden;
  @override
  final int slot;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonAbilityEntity(isHidden: $isHidden, slot: $slot, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityEntityImpl &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHidden, slot, name, url);

  /// Create a copy of PokemonAbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityEntityImplCopyWith<_$PokemonAbilityEntityImpl>
  get copyWith =>
      __$$PokemonAbilityEntityImplCopyWithImpl<_$PokemonAbilityEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonAbilityEntity implements PokemonAbilityEntity {
  const factory _PokemonAbilityEntity({
    required final bool isHidden,
    required final int slot,
    required final String name,
    required final String url,
  }) = _$PokemonAbilityEntityImpl;

  @override
  bool get isHidden;
  @override
  int get slot;
  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonAbilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityEntityImplCopyWith<_$PokemonAbilityEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonListEntity {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonListItemEntity> get results => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListEntityCopyWith<PokemonListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListEntityCopyWith<$Res> {
  factory $PokemonListEntityCopyWith(
    PokemonListEntity value,
    $Res Function(PokemonListEntity) then,
  ) = _$PokemonListEntityCopyWithImpl<$Res, PokemonListEntity>;
  @useResult
  $Res call({
    int count,
    String? next,
    String? previous,
    List<PokemonListItemEntity> results,
  });
}

/// @nodoc
class _$PokemonListEntityCopyWithImpl<$Res, $Val extends PokemonListEntity>
    implements $PokemonListEntityCopyWith<$Res> {
  _$PokemonListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListEntity
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
                      as List<PokemonListItemEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonListEntityImplCopyWith<$Res>
    implements $PokemonListEntityCopyWith<$Res> {
  factory _$$PokemonListEntityImplCopyWith(
    _$PokemonListEntityImpl value,
    $Res Function(_$PokemonListEntityImpl) then,
  ) = __$$PokemonListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int count,
    String? next,
    String? previous,
    List<PokemonListItemEntity> results,
  });
}

/// @nodoc
class __$$PokemonListEntityImplCopyWithImpl<$Res>
    extends _$PokemonListEntityCopyWithImpl<$Res, _$PokemonListEntityImpl>
    implements _$$PokemonListEntityImplCopyWith<$Res> {
  __$$PokemonListEntityImplCopyWithImpl(
    _$PokemonListEntityImpl _value,
    $Res Function(_$PokemonListEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonListEntity
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
      _$PokemonListEntityImpl(
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
                  as List<PokemonListItemEntity>,
      ),
    );
  }
}

/// @nodoc

class _$PokemonListEntityImpl implements _PokemonListEntity {
  const _$PokemonListEntityImpl({
    required this.count,
    this.next,
    this.previous,
    required final List<PokemonListItemEntity> results,
  }) : _results = results;

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonListItemEntity> _results;
  @override
  List<PokemonListItemEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListEntity(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListEntityImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    next,
    previous,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of PokemonListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListEntityImplCopyWith<_$PokemonListEntityImpl> get copyWith =>
      __$$PokemonListEntityImplCopyWithImpl<_$PokemonListEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonListEntity implements PokemonListEntity {
  const factory _PokemonListEntity({
    required final int count,
    final String? next,
    final String? previous,
    required final List<PokemonListItemEntity> results,
  }) = _$PokemonListEntityImpl;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonListItemEntity> get results;

  /// Create a copy of PokemonListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListEntityImplCopyWith<_$PokemonListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonListItemEntity {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListItemEntityCopyWith<PokemonListItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListItemEntityCopyWith<$Res> {
  factory $PokemonListItemEntityCopyWith(
    PokemonListItemEntity value,
    $Res Function(PokemonListItemEntity) then,
  ) = _$PokemonListItemEntityCopyWithImpl<$Res, PokemonListItemEntity>;
  @useResult
  $Res call({String name, String url, int id});
}

/// @nodoc
class _$PokemonListItemEntityCopyWithImpl<
  $Res,
  $Val extends PokemonListItemEntity
>
    implements $PokemonListItemEntityCopyWith<$Res> {
  _$PokemonListItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null, Object? id = null}) {
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
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonListItemEntityImplCopyWith<$Res>
    implements $PokemonListItemEntityCopyWith<$Res> {
  factory _$$PokemonListItemEntityImplCopyWith(
    _$PokemonListItemEntityImpl value,
    $Res Function(_$PokemonListItemEntityImpl) then,
  ) = __$$PokemonListItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url, int id});
}

/// @nodoc
class __$$PokemonListItemEntityImplCopyWithImpl<$Res>
    extends
        _$PokemonListItemEntityCopyWithImpl<$Res, _$PokemonListItemEntityImpl>
    implements _$$PokemonListItemEntityImplCopyWith<$Res> {
  __$$PokemonListItemEntityImplCopyWithImpl(
    _$PokemonListItemEntityImpl _value,
    $Res Function(_$PokemonListItemEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonListItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null, Object? id = null}) {
    return _then(
      _$PokemonListItemEntityImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PokemonListItemEntityImpl implements _PokemonListItemEntity {
  const _$PokemonListItemEntityImpl({
    required this.name,
    required this.url,
    required this.id,
  });

  @override
  final String name;
  @override
  final String url;
  @override
  final int id;

  @override
  String toString() {
    return 'PokemonListItemEntity(name: $name, url: $url, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListItemEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url, id);

  /// Create a copy of PokemonListItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListItemEntityImplCopyWith<_$PokemonListItemEntityImpl>
  get copyWith =>
      __$$PokemonListItemEntityImplCopyWithImpl<_$PokemonListItemEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PokemonListItemEntity implements PokemonListItemEntity {
  const factory _PokemonListItemEntity({
    required final String name,
    required final String url,
    required final int id,
  }) = _$PokemonListItemEntityImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  int get id;

  /// Create a copy of PokemonListItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListItemEntityImplCopyWith<_$PokemonListItemEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
