// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'abilities': instance.abilities,
    };

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) => PokemonType(
      slot: json['slot'] as int,
      type: PokemonTypeDetail.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeToJson(PokemonType instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

PokemonTypeDetail _$PokemonTypeDetailFromJson(Map<String, dynamic> json) =>
    PokemonTypeDetail(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonTypeDetailToJson(PokemonTypeDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) =>
    PokemonSprites(
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
      other: json['other'] == null
          ? null
          : PokemonSpritesOther.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpritesToJson(PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'other': instance.other,
    };

PokemonSpritesOther _$PokemonSpritesOtherFromJson(Map<String, dynamic> json) =>
    PokemonSpritesOther(
      officialArtwork: json['official-artwork'] == null
          ? null
          : PokemonOfficialArtwork.fromJson(
              json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpritesOtherToJson(
        PokemonSpritesOther instance) =>
    <String, dynamic>{
      'official-artwork': instance.officialArtwork,
    };

PokemonOfficialArtwork _$PokemonOfficialArtworkFromJson(
        Map<String, dynamic> json) =>
    PokemonOfficialArtwork(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$PokemonOfficialArtworkToJson(
        PokemonOfficialArtwork instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

PokemonStat _$PokemonStatFromJson(Map<String, dynamic> json) => PokemonStat(
      baseStat: json['base_stat'] as int,
      effort: json['effort'] as int,
      stat: PokemonStatDetail.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonStatToJson(PokemonStat instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

PokemonStatDetail _$PokemonStatDetailFromJson(Map<String, dynamic> json) =>
    PokemonStatDetail(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonStatDetailToJson(PokemonStatDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) =>
    PokemonAbility(
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
      ability: PokemonAbilityDetail.fromJson(
          json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonAbilityToJson(PokemonAbility instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
      'ability': instance.ability,
    };

PokemonAbilityDetail _$PokemonAbilityDetailFromJson(
        Map<String, dynamic> json) =>
    PokemonAbilityDetail(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonAbilityDetailToJson(
        PokemonAbilityDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) =>
    PokemonListResponse(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListResponseToJson(
        PokemonListResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

PokemonListItem _$PokemonListItemFromJson(Map<String, dynamic> json) =>
    PokemonListItem(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonListItemToJson(PokemonListItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
