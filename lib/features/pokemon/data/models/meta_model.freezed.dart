// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PokemonMetaModel _$PokemonMetaModelFromJson(Map<String, dynamic> json) {
  return _PokemonMetaModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonMetaModel {
  int get pokemonId => throw _privateConstructorUsedError;
  String get pokemonName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get usageRate => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  List<String> get commonItems => throw _privateConstructorUsedError;
  List<String> get commonMoves => throw _privateConstructorUsedError;
  List<String> get commonTeammates => throw _privateConstructorUsedError;
  String get tier => throw _privateConstructorUsedError;
  Map<String, double> get matchupData => throw _privateConstructorUsedError;

  /// Serializes this PokemonMetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonMetaModelCopyWith<PokemonMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonMetaModelCopyWith<$Res> {
  factory $PokemonMetaModelCopyWith(
    PokemonMetaModel value,
    $Res Function(PokemonMetaModel) then,
  ) = _$PokemonMetaModelCopyWithImpl<$Res, PokemonMetaModel>;
  @useResult
  $Res call({
    int pokemonId,
    String pokemonName,
    String imageUrl,
    double usageRate,
    int rank,
    List<String> commonItems,
    List<String> commonMoves,
    List<String> commonTeammates,
    String tier,
    Map<String, double> matchupData,
  });
}

/// @nodoc
class _$PokemonMetaModelCopyWithImpl<$Res, $Val extends PokemonMetaModel>
    implements $PokemonMetaModelCopyWith<$Res> {
  _$PokemonMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? pokemonName = null,
    Object? imageUrl = null,
    Object? usageRate = null,
    Object? rank = null,
    Object? commonItems = null,
    Object? commonMoves = null,
    Object? commonTeammates = null,
    Object? tier = null,
    Object? matchupData = null,
  }) {
    return _then(
      _value.copyWith(
            pokemonId: null == pokemonId
                ? _value.pokemonId
                : pokemonId // ignore: cast_nullable_to_non_nullable
                      as int,
            pokemonName: null == pokemonName
                ? _value.pokemonName
                : pokemonName // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            usageRate: null == usageRate
                ? _value.usageRate
                : usageRate // ignore: cast_nullable_to_non_nullable
                      as double,
            rank: null == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                      as int,
            commonItems: null == commonItems
                ? _value.commonItems
                : commonItems // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            commonMoves: null == commonMoves
                ? _value.commonMoves
                : commonMoves // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            commonTeammates: null == commonTeammates
                ? _value.commonTeammates
                : commonTeammates // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as String,
            matchupData: null == matchupData
                ? _value.matchupData
                : matchupData // ignore: cast_nullable_to_non_nullable
                      as Map<String, double>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonMetaModelImplCopyWith<$Res>
    implements $PokemonMetaModelCopyWith<$Res> {
  factory _$$PokemonMetaModelImplCopyWith(
    _$PokemonMetaModelImpl value,
    $Res Function(_$PokemonMetaModelImpl) then,
  ) = __$$PokemonMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int pokemonId,
    String pokemonName,
    String imageUrl,
    double usageRate,
    int rank,
    List<String> commonItems,
    List<String> commonMoves,
    List<String> commonTeammates,
    String tier,
    Map<String, double> matchupData,
  });
}

/// @nodoc
class __$$PokemonMetaModelImplCopyWithImpl<$Res>
    extends _$PokemonMetaModelCopyWithImpl<$Res, _$PokemonMetaModelImpl>
    implements _$$PokemonMetaModelImplCopyWith<$Res> {
  __$$PokemonMetaModelImplCopyWithImpl(
    _$PokemonMetaModelImpl _value,
    $Res Function(_$PokemonMetaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
    Object? pokemonName = null,
    Object? imageUrl = null,
    Object? usageRate = null,
    Object? rank = null,
    Object? commonItems = null,
    Object? commonMoves = null,
    Object? commonTeammates = null,
    Object? tier = null,
    Object? matchupData = null,
  }) {
    return _then(
      _$PokemonMetaModelImpl(
        pokemonId: null == pokemonId
            ? _value.pokemonId
            : pokemonId // ignore: cast_nullable_to_non_nullable
                  as int,
        pokemonName: null == pokemonName
            ? _value.pokemonName
            : pokemonName // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        usageRate: null == usageRate
            ? _value.usageRate
            : usageRate // ignore: cast_nullable_to_non_nullable
                  as double,
        rank: null == rank
            ? _value.rank
            : rank // ignore: cast_nullable_to_non_nullable
                  as int,
        commonItems: null == commonItems
            ? _value._commonItems
            : commonItems // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        commonMoves: null == commonMoves
            ? _value._commonMoves
            : commonMoves // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        commonTeammates: null == commonTeammates
            ? _value._commonTeammates
            : commonTeammates // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as String,
        matchupData: null == matchupData
            ? _value._matchupData
            : matchupData // ignore: cast_nullable_to_non_nullable
                  as Map<String, double>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonMetaModelImpl extends _PokemonMetaModel {
  const _$PokemonMetaModelImpl({
    required this.pokemonId,
    required this.pokemonName,
    required this.imageUrl,
    required this.usageRate,
    required this.rank,
    required final List<String> commonItems,
    required final List<String> commonMoves,
    required final List<String> commonTeammates,
    required this.tier,
    required final Map<String, double> matchupData,
  }) : _commonItems = commonItems,
       _commonMoves = commonMoves,
       _commonTeammates = commonTeammates,
       _matchupData = matchupData,
       super._();

  factory _$PokemonMetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonMetaModelImplFromJson(json);

  @override
  final int pokemonId;
  @override
  final String pokemonName;
  @override
  final String imageUrl;
  @override
  final double usageRate;
  @override
  final int rank;
  final List<String> _commonItems;
  @override
  List<String> get commonItems {
    if (_commonItems is EqualUnmodifiableListView) return _commonItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonItems);
  }

  final List<String> _commonMoves;
  @override
  List<String> get commonMoves {
    if (_commonMoves is EqualUnmodifiableListView) return _commonMoves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonMoves);
  }

  final List<String> _commonTeammates;
  @override
  List<String> get commonTeammates {
    if (_commonTeammates is EqualUnmodifiableListView) return _commonTeammates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonTeammates);
  }

  @override
  final String tier;
  final Map<String, double> _matchupData;
  @override
  Map<String, double> get matchupData {
    if (_matchupData is EqualUnmodifiableMapView) return _matchupData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_matchupData);
  }

  @override
  String toString() {
    return 'PokemonMetaModel(pokemonId: $pokemonId, pokemonName: $pokemonName, imageUrl: $imageUrl, usageRate: $usageRate, rank: $rank, commonItems: $commonItems, commonMoves: $commonMoves, commonTeammates: $commonTeammates, tier: $tier, matchupData: $matchupData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonMetaModelImpl &&
            (identical(other.pokemonId, pokemonId) ||
                other.pokemonId == pokemonId) &&
            (identical(other.pokemonName, pokemonName) ||
                other.pokemonName == pokemonName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.usageRate, usageRate) ||
                other.usageRate == usageRate) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            const DeepCollectionEquality().equals(
              other._commonItems,
              _commonItems,
            ) &&
            const DeepCollectionEquality().equals(
              other._commonMoves,
              _commonMoves,
            ) &&
            const DeepCollectionEquality().equals(
              other._commonTeammates,
              _commonTeammates,
            ) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            const DeepCollectionEquality().equals(
              other._matchupData,
              _matchupData,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pokemonId,
    pokemonName,
    imageUrl,
    usageRate,
    rank,
    const DeepCollectionEquality().hash(_commonItems),
    const DeepCollectionEquality().hash(_commonMoves),
    const DeepCollectionEquality().hash(_commonTeammates),
    tier,
    const DeepCollectionEquality().hash(_matchupData),
  );

  /// Create a copy of PokemonMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonMetaModelImplCopyWith<_$PokemonMetaModelImpl> get copyWith =>
      __$$PokemonMetaModelImplCopyWithImpl<_$PokemonMetaModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonMetaModelImplToJson(this);
  }
}

abstract class _PokemonMetaModel extends PokemonMetaModel {
  const factory _PokemonMetaModel({
    required final int pokemonId,
    required final String pokemonName,
    required final String imageUrl,
    required final double usageRate,
    required final int rank,
    required final List<String> commonItems,
    required final List<String> commonMoves,
    required final List<String> commonTeammates,
    required final String tier,
    required final Map<String, double> matchupData,
  }) = _$PokemonMetaModelImpl;
  const _PokemonMetaModel._() : super._();

  factory _PokemonMetaModel.fromJson(Map<String, dynamic> json) =
      _$PokemonMetaModelImpl.fromJson;

  @override
  int get pokemonId;
  @override
  String get pokemonName;
  @override
  String get imageUrl;
  @override
  double get usageRate;
  @override
  int get rank;
  @override
  List<String> get commonItems;
  @override
  List<String> get commonMoves;
  @override
  List<String> get commonTeammates;
  @override
  String get tier;
  @override
  Map<String, double> get matchupData;

  /// Create a copy of PokemonMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonMetaModelImplCopyWith<_$PokemonMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameMetaModel _$GameMetaModelFromJson(Map<String, dynamic> json) {
  return _GameMetaModel.fromJson(json);
}

/// @nodoc
mixin _$GameMetaModel {
  String get gameName => throw _privateConstructorUsedError;
  String get gameVersion => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  List<PokemonMetaModel> get topPokemon => throw _privateConstructorUsedError;
  Map<String, int> get itemUsage => throw _privateConstructorUsedError;
  Map<String, int> get teamCompositions => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this GameMetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameMetaModelCopyWith<GameMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameMetaModelCopyWith<$Res> {
  factory $GameMetaModelCopyWith(
    GameMetaModel value,
    $Res Function(GameMetaModel) then,
  ) = _$GameMetaModelCopyWithImpl<$Res, GameMetaModel>;
  @useResult
  $Res call({
    String gameName,
    String gameVersion,
    String format,
    List<PokemonMetaModel> topPokemon,
    Map<String, int> itemUsage,
    Map<String, int> teamCompositions,
    String lastUpdated,
  });
}

/// @nodoc
class _$GameMetaModelCopyWithImpl<$Res, $Val extends GameMetaModel>
    implements $GameMetaModelCopyWith<$Res> {
  _$GameMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
    Object? gameVersion = null,
    Object? format = null,
    Object? topPokemon = null,
    Object? itemUsage = null,
    Object? teamCompositions = null,
    Object? lastUpdated = null,
  }) {
    return _then(
      _value.copyWith(
            gameName: null == gameName
                ? _value.gameName
                : gameName // ignore: cast_nullable_to_non_nullable
                      as String,
            gameVersion: null == gameVersion
                ? _value.gameVersion
                : gameVersion // ignore: cast_nullable_to_non_nullable
                      as String,
            format: null == format
                ? _value.format
                : format // ignore: cast_nullable_to_non_nullable
                      as String,
            topPokemon: null == topPokemon
                ? _value.topPokemon
                : topPokemon // ignore: cast_nullable_to_non_nullable
                      as List<PokemonMetaModel>,
            itemUsage: null == itemUsage
                ? _value.itemUsage
                : itemUsage // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            teamCompositions: null == teamCompositions
                ? _value.teamCompositions
                : teamCompositions // ignore: cast_nullable_to_non_nullable
                      as Map<String, int>,
            lastUpdated: null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameMetaModelImplCopyWith<$Res>
    implements $GameMetaModelCopyWith<$Res> {
  factory _$$GameMetaModelImplCopyWith(
    _$GameMetaModelImpl value,
    $Res Function(_$GameMetaModelImpl) then,
  ) = __$$GameMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String gameName,
    String gameVersion,
    String format,
    List<PokemonMetaModel> topPokemon,
    Map<String, int> itemUsage,
    Map<String, int> teamCompositions,
    String lastUpdated,
  });
}

/// @nodoc
class __$$GameMetaModelImplCopyWithImpl<$Res>
    extends _$GameMetaModelCopyWithImpl<$Res, _$GameMetaModelImpl>
    implements _$$GameMetaModelImplCopyWith<$Res> {
  __$$GameMetaModelImplCopyWithImpl(
    _$GameMetaModelImpl _value,
    $Res Function(_$GameMetaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameName = null,
    Object? gameVersion = null,
    Object? format = null,
    Object? topPokemon = null,
    Object? itemUsage = null,
    Object? teamCompositions = null,
    Object? lastUpdated = null,
  }) {
    return _then(
      _$GameMetaModelImpl(
        gameName: null == gameName
            ? _value.gameName
            : gameName // ignore: cast_nullable_to_non_nullable
                  as String,
        gameVersion: null == gameVersion
            ? _value.gameVersion
            : gameVersion // ignore: cast_nullable_to_non_nullable
                  as String,
        format: null == format
            ? _value.format
            : format // ignore: cast_nullable_to_non_nullable
                  as String,
        topPokemon: null == topPokemon
            ? _value._topPokemon
            : topPokemon // ignore: cast_nullable_to_non_nullable
                  as List<PokemonMetaModel>,
        itemUsage: null == itemUsage
            ? _value._itemUsage
            : itemUsage // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        teamCompositions: null == teamCompositions
            ? _value._teamCompositions
            : teamCompositions // ignore: cast_nullable_to_non_nullable
                  as Map<String, int>,
        lastUpdated: null == lastUpdated
            ? _value.lastUpdated
            : lastUpdated // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GameMetaModelImpl extends _GameMetaModel {
  const _$GameMetaModelImpl({
    required this.gameName,
    required this.gameVersion,
    required this.format,
    required final List<PokemonMetaModel> topPokemon,
    required final Map<String, int> itemUsage,
    required final Map<String, int> teamCompositions,
    required this.lastUpdated,
  }) : _topPokemon = topPokemon,
       _itemUsage = itemUsage,
       _teamCompositions = teamCompositions,
       super._();

  factory _$GameMetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameMetaModelImplFromJson(json);

  @override
  final String gameName;
  @override
  final String gameVersion;
  @override
  final String format;
  final List<PokemonMetaModel> _topPokemon;
  @override
  List<PokemonMetaModel> get topPokemon {
    if (_topPokemon is EqualUnmodifiableListView) return _topPokemon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topPokemon);
  }

  final Map<String, int> _itemUsage;
  @override
  Map<String, int> get itemUsage {
    if (_itemUsage is EqualUnmodifiableMapView) return _itemUsage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_itemUsage);
  }

  final Map<String, int> _teamCompositions;
  @override
  Map<String, int> get teamCompositions {
    if (_teamCompositions is EqualUnmodifiableMapView) return _teamCompositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_teamCompositions);
  }

  @override
  final String lastUpdated;

  @override
  String toString() {
    return 'GameMetaModel(gameName: $gameName, gameVersion: $gameVersion, format: $format, topPokemon: $topPokemon, itemUsage: $itemUsage, teamCompositions: $teamCompositions, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameMetaModelImpl &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.gameVersion, gameVersion) ||
                other.gameVersion == gameVersion) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(
              other._topPokemon,
              _topPokemon,
            ) &&
            const DeepCollectionEquality().equals(
              other._itemUsage,
              _itemUsage,
            ) &&
            const DeepCollectionEquality().equals(
              other._teamCompositions,
              _teamCompositions,
            ) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    gameName,
    gameVersion,
    format,
    const DeepCollectionEquality().hash(_topPokemon),
    const DeepCollectionEquality().hash(_itemUsage),
    const DeepCollectionEquality().hash(_teamCompositions),
    lastUpdated,
  );

  /// Create a copy of GameMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameMetaModelImplCopyWith<_$GameMetaModelImpl> get copyWith =>
      __$$GameMetaModelImplCopyWithImpl<_$GameMetaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameMetaModelImplToJson(this);
  }
}

abstract class _GameMetaModel extends GameMetaModel {
  const factory _GameMetaModel({
    required final String gameName,
    required final String gameVersion,
    required final String format,
    required final List<PokemonMetaModel> topPokemon,
    required final Map<String, int> itemUsage,
    required final Map<String, int> teamCompositions,
    required final String lastUpdated,
  }) = _$GameMetaModelImpl;
  const _GameMetaModel._() : super._();

  factory _GameMetaModel.fromJson(Map<String, dynamic> json) =
      _$GameMetaModelImpl.fromJson;

  @override
  String get gameName;
  @override
  String get gameVersion;
  @override
  String get format;
  @override
  List<PokemonMetaModel> get topPokemon;
  @override
  Map<String, int> get itemUsage;
  @override
  Map<String, int> get teamCompositions;
  @override
  String get lastUpdated;

  /// Create a copy of GameMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameMetaModelImplCopyWith<_$GameMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamCompositionModel _$TeamCompositionModelFromJson(Map<String, dynamic> json) {
  return _TeamCompositionModel.fromJson(json);
}

/// @nodoc
mixin _$TeamCompositionModel {
  List<int> get pokemonIds => throw _privateConstructorUsedError;
  List<String> get pokemonNames => throw _privateConstructorUsedError;
  double get winRate => throw _privateConstructorUsedError;
  int get usageCount => throw _privateConstructorUsedError;
  String get strategy => throw _privateConstructorUsedError;
  List<String> get commonCounters => throw _privateConstructorUsedError;

  /// Serializes this TeamCompositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamCompositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamCompositionModelCopyWith<TeamCompositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCompositionModelCopyWith<$Res> {
  factory $TeamCompositionModelCopyWith(
    TeamCompositionModel value,
    $Res Function(TeamCompositionModel) then,
  ) = _$TeamCompositionModelCopyWithImpl<$Res, TeamCompositionModel>;
  @useResult
  $Res call({
    List<int> pokemonIds,
    List<String> pokemonNames,
    double winRate,
    int usageCount,
    String strategy,
    List<String> commonCounters,
  });
}

/// @nodoc
class _$TeamCompositionModelCopyWithImpl<
  $Res,
  $Val extends TeamCompositionModel
>
    implements $TeamCompositionModelCopyWith<$Res> {
  _$TeamCompositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamCompositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonIds = null,
    Object? pokemonNames = null,
    Object? winRate = null,
    Object? usageCount = null,
    Object? strategy = null,
    Object? commonCounters = null,
  }) {
    return _then(
      _value.copyWith(
            pokemonIds: null == pokemonIds
                ? _value.pokemonIds
                : pokemonIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            pokemonNames: null == pokemonNames
                ? _value.pokemonNames
                : pokemonNames // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            winRate: null == winRate
                ? _value.winRate
                : winRate // ignore: cast_nullable_to_non_nullable
                      as double,
            usageCount: null == usageCount
                ? _value.usageCount
                : usageCount // ignore: cast_nullable_to_non_nullable
                      as int,
            strategy: null == strategy
                ? _value.strategy
                : strategy // ignore: cast_nullable_to_non_nullable
                      as String,
            commonCounters: null == commonCounters
                ? _value.commonCounters
                : commonCounters // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TeamCompositionModelImplCopyWith<$Res>
    implements $TeamCompositionModelCopyWith<$Res> {
  factory _$$TeamCompositionModelImplCopyWith(
    _$TeamCompositionModelImpl value,
    $Res Function(_$TeamCompositionModelImpl) then,
  ) = __$$TeamCompositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<int> pokemonIds,
    List<String> pokemonNames,
    double winRate,
    int usageCount,
    String strategy,
    List<String> commonCounters,
  });
}

/// @nodoc
class __$$TeamCompositionModelImplCopyWithImpl<$Res>
    extends _$TeamCompositionModelCopyWithImpl<$Res, _$TeamCompositionModelImpl>
    implements _$$TeamCompositionModelImplCopyWith<$Res> {
  __$$TeamCompositionModelImplCopyWithImpl(
    _$TeamCompositionModelImpl _value,
    $Res Function(_$TeamCompositionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeamCompositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonIds = null,
    Object? pokemonNames = null,
    Object? winRate = null,
    Object? usageCount = null,
    Object? strategy = null,
    Object? commonCounters = null,
  }) {
    return _then(
      _$TeamCompositionModelImpl(
        pokemonIds: null == pokemonIds
            ? _value._pokemonIds
            : pokemonIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        pokemonNames: null == pokemonNames
            ? _value._pokemonNames
            : pokemonNames // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        winRate: null == winRate
            ? _value.winRate
            : winRate // ignore: cast_nullable_to_non_nullable
                  as double,
        usageCount: null == usageCount
            ? _value.usageCount
            : usageCount // ignore: cast_nullable_to_non_nullable
                  as int,
        strategy: null == strategy
            ? _value.strategy
            : strategy // ignore: cast_nullable_to_non_nullable
                  as String,
        commonCounters: null == commonCounters
            ? _value._commonCounters
            : commonCounters // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamCompositionModelImpl extends _TeamCompositionModel {
  const _$TeamCompositionModelImpl({
    required final List<int> pokemonIds,
    required final List<String> pokemonNames,
    required this.winRate,
    required this.usageCount,
    required this.strategy,
    required final List<String> commonCounters,
  }) : _pokemonIds = pokemonIds,
       _pokemonNames = pokemonNames,
       _commonCounters = commonCounters,
       super._();

  factory _$TeamCompositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamCompositionModelImplFromJson(json);

  final List<int> _pokemonIds;
  @override
  List<int> get pokemonIds {
    if (_pokemonIds is EqualUnmodifiableListView) return _pokemonIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonIds);
  }

  final List<String> _pokemonNames;
  @override
  List<String> get pokemonNames {
    if (_pokemonNames is EqualUnmodifiableListView) return _pokemonNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonNames);
  }

  @override
  final double winRate;
  @override
  final int usageCount;
  @override
  final String strategy;
  final List<String> _commonCounters;
  @override
  List<String> get commonCounters {
    if (_commonCounters is EqualUnmodifiableListView) return _commonCounters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonCounters);
  }

  @override
  String toString() {
    return 'TeamCompositionModel(pokemonIds: $pokemonIds, pokemonNames: $pokemonNames, winRate: $winRate, usageCount: $usageCount, strategy: $strategy, commonCounters: $commonCounters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamCompositionModelImpl &&
            const DeepCollectionEquality().equals(
              other._pokemonIds,
              _pokemonIds,
            ) &&
            const DeepCollectionEquality().equals(
              other._pokemonNames,
              _pokemonNames,
            ) &&
            (identical(other.winRate, winRate) || other.winRate == winRate) &&
            (identical(other.usageCount, usageCount) ||
                other.usageCount == usageCount) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy) &&
            const DeepCollectionEquality().equals(
              other._commonCounters,
              _commonCounters,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pokemonIds),
    const DeepCollectionEquality().hash(_pokemonNames),
    winRate,
    usageCount,
    strategy,
    const DeepCollectionEquality().hash(_commonCounters),
  );

  /// Create a copy of TeamCompositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamCompositionModelImplCopyWith<_$TeamCompositionModelImpl>
  get copyWith =>
      __$$TeamCompositionModelImplCopyWithImpl<_$TeamCompositionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamCompositionModelImplToJson(this);
  }
}

abstract class _TeamCompositionModel extends TeamCompositionModel {
  const factory _TeamCompositionModel({
    required final List<int> pokemonIds,
    required final List<String> pokemonNames,
    required final double winRate,
    required final int usageCount,
    required final String strategy,
    required final List<String> commonCounters,
  }) = _$TeamCompositionModelImpl;
  const _TeamCompositionModel._() : super._();

  factory _TeamCompositionModel.fromJson(Map<String, dynamic> json) =
      _$TeamCompositionModelImpl.fromJson;

  @override
  List<int> get pokemonIds;
  @override
  List<String> get pokemonNames;
  @override
  double get winRate;
  @override
  int get usageCount;
  @override
  String get strategy;
  @override
  List<String> get commonCounters;

  /// Create a copy of TeamCompositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamCompositionModelImplCopyWith<_$TeamCompositionModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ItemUsageModel _$ItemUsageModelFromJson(Map<String, dynamic> json) {
  return _ItemUsageModel.fromJson(json);
}

/// @nodoc
mixin _$ItemUsageModel {
  String get itemName => throw _privateConstructorUsedError;
  double get usageRate => throw _privateConstructorUsedError;
  List<String> get commonUsers => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ItemUsageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemUsageModelCopyWith<ItemUsageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemUsageModelCopyWith<$Res> {
  factory $ItemUsageModelCopyWith(
    ItemUsageModel value,
    $Res Function(ItemUsageModel) then,
  ) = _$ItemUsageModelCopyWithImpl<$Res, ItemUsageModel>;
  @useResult
  $Res call({
    String itemName,
    double usageRate,
    List<String> commonUsers,
    String description,
  });
}

/// @nodoc
class _$ItemUsageModelCopyWithImpl<$Res, $Val extends ItemUsageModel>
    implements $ItemUsageModelCopyWith<$Res> {
  _$ItemUsageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? usageRate = null,
    Object? commonUsers = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            itemName: null == itemName
                ? _value.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                      as String,
            usageRate: null == usageRate
                ? _value.usageRate
                : usageRate // ignore: cast_nullable_to_non_nullable
                      as double,
            commonUsers: null == commonUsers
                ? _value.commonUsers
                : commonUsers // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemUsageModelImplCopyWith<$Res>
    implements $ItemUsageModelCopyWith<$Res> {
  factory _$$ItemUsageModelImplCopyWith(
    _$ItemUsageModelImpl value,
    $Res Function(_$ItemUsageModelImpl) then,
  ) = __$$ItemUsageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String itemName,
    double usageRate,
    List<String> commonUsers,
    String description,
  });
}

/// @nodoc
class __$$ItemUsageModelImplCopyWithImpl<$Res>
    extends _$ItemUsageModelCopyWithImpl<$Res, _$ItemUsageModelImpl>
    implements _$$ItemUsageModelImplCopyWith<$Res> {
  __$$ItemUsageModelImplCopyWithImpl(
    _$ItemUsageModelImpl _value,
    $Res Function(_$ItemUsageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemName = null,
    Object? usageRate = null,
    Object? commonUsers = null,
    Object? description = null,
  }) {
    return _then(
      _$ItemUsageModelImpl(
        itemName: null == itemName
            ? _value.itemName
            : itemName // ignore: cast_nullable_to_non_nullable
                  as String,
        usageRate: null == usageRate
            ? _value.usageRate
            : usageRate // ignore: cast_nullable_to_non_nullable
                  as double,
        commonUsers: null == commonUsers
            ? _value._commonUsers
            : commonUsers // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemUsageModelImpl extends _ItemUsageModel {
  const _$ItemUsageModelImpl({
    required this.itemName,
    required this.usageRate,
    required final List<String> commonUsers,
    required this.description,
  }) : _commonUsers = commonUsers,
       super._();

  factory _$ItemUsageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemUsageModelImplFromJson(json);

  @override
  final String itemName;
  @override
  final double usageRate;
  final List<String> _commonUsers;
  @override
  List<String> get commonUsers {
    if (_commonUsers is EqualUnmodifiableListView) return _commonUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonUsers);
  }

  @override
  final String description;

  @override
  String toString() {
    return 'ItemUsageModel(itemName: $itemName, usageRate: $usageRate, commonUsers: $commonUsers, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemUsageModelImpl &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.usageRate, usageRate) ||
                other.usageRate == usageRate) &&
            const DeepCollectionEquality().equals(
              other._commonUsers,
              _commonUsers,
            ) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    itemName,
    usageRate,
    const DeepCollectionEquality().hash(_commonUsers),
    description,
  );

  /// Create a copy of ItemUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemUsageModelImplCopyWith<_$ItemUsageModelImpl> get copyWith =>
      __$$ItemUsageModelImplCopyWithImpl<_$ItemUsageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemUsageModelImplToJson(this);
  }
}

abstract class _ItemUsageModel extends ItemUsageModel {
  const factory _ItemUsageModel({
    required final String itemName,
    required final double usageRate,
    required final List<String> commonUsers,
    required final String description,
  }) = _$ItemUsageModelImpl;
  const _ItemUsageModel._() : super._();

  factory _ItemUsageModel.fromJson(Map<String, dynamic> json) =
      _$ItemUsageModelImpl.fromJson;

  @override
  String get itemName;
  @override
  double get usageRate;
  @override
  List<String> get commonUsers;
  @override
  String get description;

  /// Create a copy of ItemUsageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemUsageModelImplCopyWith<_$ItemUsageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
