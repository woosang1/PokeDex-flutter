import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<PokemonType> types;
  final PokemonSprites sprites;
  final List<PokemonStat> stats;
  final List<PokemonAbility> abilities;

  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.sprites,
    required this.stats,
    required this.abilities,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  String get imageUrl => sprites.other.officialArtwork.frontDefault;
  String get primaryType => types.isNotEmpty ? types.first.type.name : 'unknown';
}

@JsonSerializable()
class PokemonType {
  final int slot;
  final PokemonTypeDetail type;

  PokemonType({
    required this.slot,
    required this.type,
  });

  factory PokemonType.fromJson(Map<String, dynamic> json) => _$PokemonTypeFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonTypeToJson(this);
}

@JsonSerializable()
class PokemonTypeDetail {
  final String name;
  final String url;

  PokemonTypeDetail({
    required this.name,
    required this.url,
  });

  factory PokemonTypeDetail.fromJson(Map<String, dynamic> json) => _$PokemonTypeDetailFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonTypeDetailToJson(this);
}

@JsonSerializable()
class PokemonSprites {
  final String frontDefault;
  final String frontShiny;
  final PokemonSpritesOther other;

  PokemonSprites({
    required this.frontDefault,
    required this.frontShiny,
    required this.other,
  });

  factory PokemonSprites.fromJson(Map<String, dynamic> json) => _$PokemonSpritesFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonSpritesToJson(this);
}

@JsonSerializable()
class PokemonSpritesOther {
  @JsonKey(name: 'official-artwork')
  final PokemonOfficialArtwork officialArtwork;

  PokemonSpritesOther({
    required this.officialArtwork,
  });

  factory PokemonSpritesOther.fromJson(Map<String, dynamic> json) => _$PokemonSpritesOtherFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonSpritesOtherToJson(this);
}

@JsonSerializable()
class PokemonOfficialArtwork {
  @JsonKey(name: 'front_default')
  final String frontDefault;

  PokemonOfficialArtwork({
    required this.frontDefault,
  });

  factory PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) => _$PokemonOfficialArtworkFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonOfficialArtworkToJson(this);
}

@JsonSerializable()
class PokemonStat {
  final int baseStat;
  final int effort;
  final PokemonStatDetail stat;

  PokemonStat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory PokemonStat.fromJson(Map<String, dynamic> json) => _$PokemonStatFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonStatToJson(this);
}

@JsonSerializable()
class PokemonStatDetail {
  final String name;
  final String url;

  PokemonStatDetail({
    required this.name,
    required this.url,
  });

  factory PokemonStatDetail.fromJson(Map<String, dynamic> json) => _$PokemonStatDetailFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonStatDetailToJson(this);
}

@JsonSerializable()
class PokemonAbility {
  final bool isHidden;
  final int slot;
  final PokemonAbilityDetail ability;

  PokemonAbility({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  factory PokemonAbility.fromJson(Map<String, dynamic> json) => _$PokemonAbilityFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonAbilityToJson(this);
}

@JsonSerializable()
class PokemonAbilityDetail {
  final String name;
  final String url;

  PokemonAbilityDetail({
    required this.name,
    required this.url,
  });

  factory PokemonAbilityDetail.fromJson(Map<String, dynamic> json) => _$PokemonAbilityDetailFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonAbilityDetailToJson(this);
}

@JsonSerializable()
class PokemonListResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<PokemonListItem> results;

  PokemonListResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) => _$PokemonListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonListResponseToJson(this);
}

@JsonSerializable()
class PokemonListItem {
  final String name;
  final String url;

  PokemonListItem({
    required this.name,
    required this.url,
  });

  factory PokemonListItem.fromJson(Map<String, dynamic> json) => _$PokemonListItemFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonListItemToJson(this);

  int get id {
    final uri = Uri.parse(url);
    final segments = uri.pathSegments;
    return int.parse(segments[segments.length - 2]);
  }
}
