// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FilterEntity {
  GenerationEntity? get selectedGeneration =>
      throw _privateConstructorUsedError;
  List<String> get selectedTypes => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterEntityCopyWith<FilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEntityCopyWith<$Res> {
  factory $FilterEntityCopyWith(
    FilterEntity value,
    $Res Function(FilterEntity) then,
  ) = _$FilterEntityCopyWithImpl<$Res, FilterEntity>;
  @useResult
  $Res call({
    GenerationEntity? selectedGeneration,
    List<String> selectedTypes,
    int currentPage,
    int itemsPerPage,
  });

  $GenerationEntityCopyWith<$Res>? get selectedGeneration;
}

/// @nodoc
class _$FilterEntityCopyWithImpl<$Res, $Val extends FilterEntity>
    implements $FilterEntityCopyWith<$Res> {
  _$FilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGeneration = freezed,
    Object? selectedTypes = null,
    Object? currentPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(
      _value.copyWith(
            selectedGeneration: freezed == selectedGeneration
                ? _value.selectedGeneration
                : selectedGeneration // ignore: cast_nullable_to_non_nullable
                      as GenerationEntity?,
            selectedTypes: null == selectedTypes
                ? _value.selectedTypes
                : selectedTypes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            itemsPerPage: null == itemsPerPage
                ? _value.itemsPerPage
                : itemsPerPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenerationEntityCopyWith<$Res>? get selectedGeneration {
    if (_value.selectedGeneration == null) {
      return null;
    }

    return $GenerationEntityCopyWith<$Res>(_value.selectedGeneration!, (value) {
      return _then(_value.copyWith(selectedGeneration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterEntityImplCopyWith<$Res>
    implements $FilterEntityCopyWith<$Res> {
  factory _$$FilterEntityImplCopyWith(
    _$FilterEntityImpl value,
    $Res Function(_$FilterEntityImpl) then,
  ) = __$$FilterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GenerationEntity? selectedGeneration,
    List<String> selectedTypes,
    int currentPage,
    int itemsPerPage,
  });

  @override
  $GenerationEntityCopyWith<$Res>? get selectedGeneration;
}

/// @nodoc
class __$$FilterEntityImplCopyWithImpl<$Res>
    extends _$FilterEntityCopyWithImpl<$Res, _$FilterEntityImpl>
    implements _$$FilterEntityImplCopyWith<$Res> {
  __$$FilterEntityImplCopyWithImpl(
    _$FilterEntityImpl _value,
    $Res Function(_$FilterEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGeneration = freezed,
    Object? selectedTypes = null,
    Object? currentPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(
      _$FilterEntityImpl(
        selectedGeneration: freezed == selectedGeneration
            ? _value.selectedGeneration
            : selectedGeneration // ignore: cast_nullable_to_non_nullable
                  as GenerationEntity?,
        selectedTypes: null == selectedTypes
            ? _value._selectedTypes
            : selectedTypes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        itemsPerPage: null == itemsPerPage
            ? _value.itemsPerPage
            : itemsPerPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FilterEntityImpl extends _FilterEntity {
  const _$FilterEntityImpl({
    this.selectedGeneration,
    final List<String> selectedTypes = const [],
    this.currentPage = 1,
    this.itemsPerPage = 20,
  }) : _selectedTypes = selectedTypes,
       super._();

  @override
  final GenerationEntity? selectedGeneration;
  final List<String> _selectedTypes;
  @override
  @JsonKey()
  List<String> get selectedTypes {
    if (_selectedTypes is EqualUnmodifiableListView) return _selectedTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTypes);
  }

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int itemsPerPage;

  @override
  String toString() {
    return 'FilterEntity(selectedGeneration: $selectedGeneration, selectedTypes: $selectedTypes, currentPage: $currentPage, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterEntityImpl &&
            (identical(other.selectedGeneration, selectedGeneration) ||
                other.selectedGeneration == selectedGeneration) &&
            const DeepCollectionEquality().equals(
              other._selectedTypes,
              _selectedTypes,
            ) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedGeneration,
    const DeepCollectionEquality().hash(_selectedTypes),
    currentPage,
    itemsPerPage,
  );

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterEntityImplCopyWith<_$FilterEntityImpl> get copyWith =>
      __$$FilterEntityImplCopyWithImpl<_$FilterEntityImpl>(this, _$identity);
}

abstract class _FilterEntity extends FilterEntity {
  const factory _FilterEntity({
    final GenerationEntity? selectedGeneration,
    final List<String> selectedTypes,
    final int currentPage,
    final int itemsPerPage,
  }) = _$FilterEntityImpl;
  const _FilterEntity._() : super._();

  @override
  GenerationEntity? get selectedGeneration;
  @override
  List<String> get selectedTypes;
  @override
  int get currentPage;
  @override
  int get itemsPerPage;

  /// Create a copy of FilterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterEntityImplCopyWith<_$FilterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenerationEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get startId => throw _privateConstructorUsedError;
  int get endId => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;

  /// Create a copy of GenerationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerationEntityCopyWith<GenerationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationEntityCopyWith<$Res> {
  factory $GenerationEntityCopyWith(
    GenerationEntity value,
    $Res Function(GenerationEntity) then,
  ) = _$GenerationEntityCopyWithImpl<$Res, GenerationEntity>;
  @useResult
  $Res call({int id, String name, int startId, int endId, String region});
}

/// @nodoc
class _$GenerationEntityCopyWithImpl<$Res, $Val extends GenerationEntity>
    implements $GenerationEntityCopyWith<$Res> {
  _$GenerationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startId = null,
    Object? endId = null,
    Object? region = null,
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
            startId: null == startId
                ? _value.startId
                : startId // ignore: cast_nullable_to_non_nullable
                      as int,
            endId: null == endId
                ? _value.endId
                : endId // ignore: cast_nullable_to_non_nullable
                      as int,
            region: null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GenerationEntityImplCopyWith<$Res>
    implements $GenerationEntityCopyWith<$Res> {
  factory _$$GenerationEntityImplCopyWith(
    _$GenerationEntityImpl value,
    $Res Function(_$GenerationEntityImpl) then,
  ) = __$$GenerationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int startId, int endId, String region});
}

/// @nodoc
class __$$GenerationEntityImplCopyWithImpl<$Res>
    extends _$GenerationEntityCopyWithImpl<$Res, _$GenerationEntityImpl>
    implements _$$GenerationEntityImplCopyWith<$Res> {
  __$$GenerationEntityImplCopyWithImpl(
    _$GenerationEntityImpl _value,
    $Res Function(_$GenerationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GenerationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startId = null,
    Object? endId = null,
    Object? region = null,
  }) {
    return _then(
      _$GenerationEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        startId: null == startId
            ? _value.startId
            : startId // ignore: cast_nullable_to_non_nullable
                  as int,
        endId: null == endId
            ? _value.endId
            : endId // ignore: cast_nullable_to_non_nullable
                  as int,
        region: null == region
            ? _value.region
            : region // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GenerationEntityImpl implements _GenerationEntity {
  const _$GenerationEntityImpl({
    required this.id,
    required this.name,
    required this.startId,
    required this.endId,
    required this.region,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final int startId;
  @override
  final int endId;
  @override
  final String region;

  @override
  String toString() {
    return 'GenerationEntity(id: $id, name: $name, startId: $startId, endId: $endId, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startId, startId) || other.startId == startId) &&
            (identical(other.endId, endId) || other.endId == endId) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, startId, endId, region);

  /// Create a copy of GenerationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerationEntityImplCopyWith<_$GenerationEntityImpl> get copyWith =>
      __$$GenerationEntityImplCopyWithImpl<_$GenerationEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _GenerationEntity implements GenerationEntity {
  const factory _GenerationEntity({
    required final int id,
    required final String name,
    required final int startId,
    required final int endId,
    required final String region,
  }) = _$GenerationEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int get startId;
  @override
  int get endId;
  @override
  String get region;

  /// Create a copy of GenerationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerationEntityImplCopyWith<_$GenerationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
