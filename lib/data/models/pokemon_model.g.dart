// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonModelImpl _$$PokemonModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSpritesModel.fromJson(
        json['sprites'] as Map<String, dynamic>,
      ),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonModelImplToJson(_$PokemonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'abilities': instance.abilities,
    };

_$PokemonTypeModelImpl _$$PokemonTypeModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonTypeModelImpl(
  slot: (json['slot'] as num).toInt(),
  type: PokemonTypeDetailModel.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PokemonTypeModelImplToJson(
  _$PokemonTypeModelImpl instance,
) => <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_$PokemonTypeDetailModelImpl _$$PokemonTypeDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonTypeDetailModelImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$PokemonTypeDetailModelImplToJson(
  _$PokemonTypeDetailModelImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$PokemonSpritesModelImpl _$$PokemonSpritesModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonSpritesModelImpl(
  frontDefault: json['front_default'] as String?,
  frontShiny: json['front_shiny'] as String?,
  other: json['other'] == null
      ? null
      : PokemonSpritesOtherModel.fromJson(
          json['other'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$PokemonSpritesModelImplToJson(
  _$PokemonSpritesModelImpl instance,
) => <String, dynamic>{
  'front_default': instance.frontDefault,
  'front_shiny': instance.frontShiny,
  'other': instance.other,
};

_$PokemonSpritesOtherModelImpl _$$PokemonSpritesOtherModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonSpritesOtherModelImpl(
  officialArtwork: json['official-artwork'] == null
      ? null
      : PokemonOfficialArtworkModel.fromJson(
          json['official-artwork'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$PokemonSpritesOtherModelImplToJson(
  _$PokemonSpritesOtherModelImpl instance,
) => <String, dynamic>{'official-artwork': instance.officialArtwork};

_$PokemonOfficialArtworkModelImpl _$$PokemonOfficialArtworkModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonOfficialArtworkModelImpl(
  frontDefault: json['front_default'] as String?,
);

Map<String, dynamic> _$$PokemonOfficialArtworkModelImplToJson(
  _$PokemonOfficialArtworkModelImpl instance,
) => <String, dynamic>{'front_default': instance.frontDefault};

_$PokemonStatModelImpl _$$PokemonStatModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonStatModelImpl(
  baseStat: (json['base_stat'] as num).toInt(),
  effort: (json['effort'] as num).toInt(),
  stat: PokemonStatDetailModel.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PokemonStatModelImplToJson(
  _$PokemonStatModelImpl instance,
) => <String, dynamic>{
  'base_stat': instance.baseStat,
  'effort': instance.effort,
  'stat': instance.stat,
};

_$PokemonStatDetailModelImpl _$$PokemonStatDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonStatDetailModelImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$PokemonStatDetailModelImplToJson(
  _$PokemonStatDetailModelImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$PokemonAbilityModelImpl _$$PokemonAbilityModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonAbilityModelImpl(
  isHidden: json['is_hidden'] as bool,
  slot: (json['slot'] as num).toInt(),
  ability: PokemonAbilityDetailModel.fromJson(
    json['ability'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$PokemonAbilityModelImplToJson(
  _$PokemonAbilityModelImpl instance,
) => <String, dynamic>{
  'is_hidden': instance.isHidden,
  'slot': instance.slot,
  'ability': instance.ability,
};

_$PokemonAbilityDetailModelImpl _$$PokemonAbilityDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonAbilityDetailModelImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$PokemonAbilityDetailModelImplToJson(
  _$PokemonAbilityDetailModelImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$PokemonListResponseModelImpl _$$PokemonListResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonListResponseModelImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => PokemonListItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PokemonListResponseModelImplToJson(
  _$PokemonListResponseModelImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};

_$PokemonListItemModelImpl _$$PokemonListItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonListItemModelImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$PokemonListItemModelImplToJson(
  _$PokemonListItemModelImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
