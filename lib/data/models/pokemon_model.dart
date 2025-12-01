import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pokemon_entity.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

/// Pokemon data model with JSON serialization
@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonTypeModel> types,
    required PokemonSpritesModel sprites,
    required List<PokemonStatModel> stats,
    required List<PokemonAbilityModel> abilities,
  }) = _PokemonModel;

  const PokemonModel._();

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);

  /// Convert model to entity
  PokemonEntity toEntity() {
    final imageUrl = sprites.other?.officialArtwork?.frontDefault ??
        sprites.frontDefault ??
        'https://via.placeholder.com/200x200?text=No+Image';

    return PokemonEntity(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types.map((t) => t.toEntity()).toList(),
      imageUrl: imageUrl,
      stats: stats.map((s) => s.toEntity()).toList(),
      abilities: abilities.map((a) => a.toEntity()).toList(),
    );
  }
}

@freezed
class PokemonTypeModel with _$PokemonTypeModel {
  const factory PokemonTypeModel({
    required int slot,
    required PokemonTypeDetailModel type,
  }) = _PokemonTypeModel;

  const PokemonTypeModel._();

  factory PokemonTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeModelFromJson(json);

  PokemonTypeEntity toEntity() {
    return PokemonTypeEntity(
      slot: slot,
      name: type.name,
      url: type.url,
    );
  }
}

@freezed
class PokemonTypeDetailModel with _$PokemonTypeDetailModel {
  const factory PokemonTypeDetailModel({
    required String name,
    required String url,
  }) = _PokemonTypeDetailModel;

  factory PokemonTypeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDetailModelFromJson(json);
}

@freezed
class PokemonSpritesModel with _$PokemonSpritesModel {
  const factory PokemonSpritesModel({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    PokemonSpritesOtherModel? other,
  }) = _PokemonSpritesModel;

  factory PokemonSpritesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesModelFromJson(json);
}

@freezed
class PokemonSpritesOtherModel with _$PokemonSpritesOtherModel {
  const factory PokemonSpritesOtherModel({
    @JsonKey(name: 'official-artwork')
    PokemonOfficialArtworkModel? officialArtwork,
  }) = _PokemonSpritesOtherModel;

  factory PokemonSpritesOtherModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesOtherModelFromJson(json);
}

@freezed
class PokemonOfficialArtworkModel with _$PokemonOfficialArtworkModel {
  const factory PokemonOfficialArtworkModel({
    @JsonKey(name: 'front_default') String? frontDefault,
  }) = _PokemonOfficialArtworkModel;

  factory PokemonOfficialArtworkModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkModelFromJson(json);
}

@freezed
class PokemonStatModel with _$PokemonStatModel {
  const factory PokemonStatModel({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required PokemonStatDetailModel stat,
  }) = _PokemonStatModel;

  const PokemonStatModel._();

  factory PokemonStatModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatModelFromJson(json);

  PokemonStatEntity toEntity() {
    return PokemonStatEntity(
      baseStat: baseStat,
      effort: effort,
      name: stat.name,
      url: stat.url,
    );
  }
}

@freezed
class PokemonStatDetailModel with _$PokemonStatDetailModel {
  const factory PokemonStatDetailModel({
    required String name,
    required String url,
  }) = _PokemonStatDetailModel;

  factory PokemonStatDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatDetailModelFromJson(json);
}

@freezed
class PokemonAbilityModel with _$PokemonAbilityModel {
  const factory PokemonAbilityModel({
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot,
    required PokemonAbilityDetailModel ability,
  }) = _PokemonAbilityModel;

  const PokemonAbilityModel._();

  factory PokemonAbilityModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityModelFromJson(json);

  PokemonAbilityEntity toEntity() {
    return PokemonAbilityEntity(
      isHidden: isHidden,
      slot: slot,
      name: ability.name,
      url: ability.url,
    );
  }
}

@freezed
class PokemonAbilityDetailModel with _$PokemonAbilityDetailModel {
  const factory PokemonAbilityDetailModel({
    required String name,
    required String url,
  }) = _PokemonAbilityDetailModel;

  factory PokemonAbilityDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDetailModelFromJson(json);
}

@freezed
class PokemonListResponseModel with _$PokemonListResponseModel {
  const factory PokemonListResponseModel({
    required int count,
    String? next,
    String? previous,
    required List<PokemonListItemModel> results,
  }) = _PokemonListResponseModel;

  const PokemonListResponseModel._();

  factory PokemonListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseModelFromJson(json);

  PokemonListEntity toEntity() {
    return PokemonListEntity(
      count: count,
      next: next,
      previous: previous,
      results: results.map((r) => r.toEntity()).toList(),
    );
  }
}

@freezed
class PokemonListItemModel with _$PokemonListItemModel {
  const factory PokemonListItemModel({
    required String name,
    required String url,
  }) = _PokemonListItemModel;

  const PokemonListItemModel._();

  factory PokemonListItemModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListItemModelFromJson(json);

  int get id {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return int.parse(segments[segments.length - 2]);
  }

  PokemonListItemEntity toEntity() {
    return PokemonListItemEntity(
      name: name,
      url: url,
      id: id,
    );
  }
}

