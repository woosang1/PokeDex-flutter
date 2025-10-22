import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meta_entity.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

/// 포켓몬 메타데이터 모델
@freezed
class PokemonMetaModel with _$PokemonMetaModel {
  const factory PokemonMetaModel({
    required int pokemonId,
    required String pokemonName,
    required String imageUrl,
    required double usageRate,
    required int rank,
    required List<String> commonItems,
    required List<String> commonMoves,
    required List<String> commonTeammates,
    required String tier,
    required Map<String, double> matchupData,
  }) = _PokemonMetaModel;

  const PokemonMetaModel._();

  factory PokemonMetaModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonMetaModelFromJson(json);

  PokemonMetaEntity toEntity() {
    return PokemonMetaEntity(
      pokemonId: pokemonId,
      pokemonName: pokemonName,
      imageUrl: imageUrl,
      usageRate: usageRate,
      rank: rank,
      commonItems: commonItems,
      commonMoves: commonMoves,
      commonTeammates: commonTeammates,
      tier: tier,
      matchupData: matchupData,
    );
  }
}

/// 게임별 메타데이터 모델
@freezed
class GameMetaModel with _$GameMetaModel {
  const factory GameMetaModel({
    required String gameName,
    required String gameVersion,
    required String format,
    required List<PokemonMetaModel> topPokemon,
    required Map<String, int> itemUsage,
    required Map<String, int> teamCompositions,
    required String lastUpdated,
  }) = _GameMetaModel;

  const GameMetaModel._();

  factory GameMetaModel.fromJson(Map<String, dynamic> json) =>
      _$GameMetaModelFromJson(json);

  GameMetaEntity toEntity() {
    return GameMetaEntity(
      gameName: gameName,
      gameVersion: gameVersion,
      format: format,
      topPokemon: topPokemon.map((p) => p.toEntity()).toList(),
      itemUsage: itemUsage,
      teamCompositions: teamCompositions,
      lastUpdated: DateTime.parse(lastUpdated),
    );
  }
}

/// 포켓몬 조합 모델
@freezed
class TeamCompositionModel with _$TeamCompositionModel {
  const factory TeamCompositionModel({
    required List<int> pokemonIds,
    required List<String> pokemonNames,
    required double winRate,
    required int usageCount,
    required String strategy,
    required List<String> commonCounters,
  }) = _TeamCompositionModel;

  const TeamCompositionModel._();

  factory TeamCompositionModel.fromJson(Map<String, dynamic> json) =>
      _$TeamCompositionModelFromJson(json);

  TeamCompositionEntity toEntity() {
    return TeamCompositionEntity(
      pokemonIds: pokemonIds,
      pokemonNames: pokemonNames,
      winRate: winRate,
      usageCount: usageCount,
      strategy: strategy,
      commonCounters: commonCounters,
    );
  }
}

/// 아이템 사용률 모델
@freezed
class ItemUsageModel with _$ItemUsageModel {
  const factory ItemUsageModel({
    required String itemName,
    required double usageRate,
    required List<String> commonUsers,
    required String description,
  }) = _ItemUsageModel;

  const ItemUsageModel._();

  factory ItemUsageModel.fromJson(Map<String, dynamic> json) =>
      _$ItemUsageModelFromJson(json);

  ItemUsageEntity toEntity() {
    return ItemUsageEntity(
      itemName: itemName,
      usageRate: usageRate,
      commonUsers: commonUsers,
      description: description,
    );
  }
}

