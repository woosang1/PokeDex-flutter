// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonMetaModelImpl _$$PokemonMetaModelImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonMetaModelImpl(
  pokemonId: (json['pokemonId'] as num).toInt(),
  pokemonName: json['pokemonName'] as String,
  imageUrl: json['imageUrl'] as String,
  usageRate: (json['usageRate'] as num).toDouble(),
  rank: (json['rank'] as num).toInt(),
  commonItems: (json['commonItems'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  commonMoves: (json['commonMoves'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  commonTeammates: (json['commonTeammates'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  tier: json['tier'] as String,
  matchupData: (json['matchupData'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
);

Map<String, dynamic> _$$PokemonMetaModelImplToJson(
  _$PokemonMetaModelImpl instance,
) => <String, dynamic>{
  'pokemonId': instance.pokemonId,
  'pokemonName': instance.pokemonName,
  'imageUrl': instance.imageUrl,
  'usageRate': instance.usageRate,
  'rank': instance.rank,
  'commonItems': instance.commonItems,
  'commonMoves': instance.commonMoves,
  'commonTeammates': instance.commonTeammates,
  'tier': instance.tier,
  'matchupData': instance.matchupData,
};

_$GameMetaModelImpl _$$GameMetaModelImplFromJson(Map<String, dynamic> json) =>
    _$GameMetaModelImpl(
      gameName: json['gameName'] as String,
      gameVersion: json['gameVersion'] as String,
      format: json['format'] as String,
      topPokemon: (json['topPokemon'] as List<dynamic>)
          .map((e) => PokemonMetaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemUsage: Map<String, int>.from(json['itemUsage'] as Map),
      teamCompositions: Map<String, int>.from(json['teamCompositions'] as Map),
      lastUpdated: json['lastUpdated'] as String,
    );

Map<String, dynamic> _$$GameMetaModelImplToJson(_$GameMetaModelImpl instance) =>
    <String, dynamic>{
      'gameName': instance.gameName,
      'gameVersion': instance.gameVersion,
      'format': instance.format,
      'topPokemon': instance.topPokemon,
      'itemUsage': instance.itemUsage,
      'teamCompositions': instance.teamCompositions,
      'lastUpdated': instance.lastUpdated,
    };

_$TeamCompositionModelImpl _$$TeamCompositionModelImplFromJson(
  Map<String, dynamic> json,
) => _$TeamCompositionModelImpl(
  pokemonIds: (json['pokemonIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  pokemonNames: (json['pokemonNames'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  winRate: (json['winRate'] as num).toDouble(),
  usageCount: (json['usageCount'] as num).toInt(),
  strategy: json['strategy'] as String,
  commonCounters: (json['commonCounters'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$$TeamCompositionModelImplToJson(
  _$TeamCompositionModelImpl instance,
) => <String, dynamic>{
  'pokemonIds': instance.pokemonIds,
  'pokemonNames': instance.pokemonNames,
  'winRate': instance.winRate,
  'usageCount': instance.usageCount,
  'strategy': instance.strategy,
  'commonCounters': instance.commonCounters,
};

_$ItemUsageModelImpl _$$ItemUsageModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemUsageModelImpl(
      itemName: json['itemName'] as String,
      usageRate: (json['usageRate'] as num).toDouble(),
      commonUsers: (json['commonUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ItemUsageModelImplToJson(
  _$ItemUsageModelImpl instance,
) => <String, dynamic>{
  'itemName': instance.itemName,
  'usageRate': instance.usageRate,
  'commonUsers': instance.commonUsers,
  'description': instance.description,
};
