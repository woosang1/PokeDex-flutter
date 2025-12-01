import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_entity.freezed.dart';

/// 포켓몬 메타데이터 엔티티
@freezed
class PokemonMetaEntity with _$PokemonMetaEntity {
  const factory PokemonMetaEntity({
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
  }) = _PokemonMetaEntity;
}

/// 게임별 메타데이터 엔티티
@freezed
class GameMetaEntity with _$GameMetaEntity {
  const factory GameMetaEntity({
    required String gameName,
    required String gameVersion,
    required String format,
    required List<PokemonMetaEntity> topPokemon,
    required Map<String, int> itemUsage,
    required Map<String, int> teamCompositions,
    required DateTime lastUpdated,
  }) = _GameMetaEntity;
}

/// 포켓몬 조합 엔티티
@freezed
class TeamCompositionEntity with _$TeamCompositionEntity {
  const factory TeamCompositionEntity({
    required List<int> pokemonIds,
    required List<String> pokemonNames,
    required double winRate,
    required int usageCount,
    required String strategy,
    required List<String> commonCounters,
  }) = _TeamCompositionEntity;
}

/// 아이템 사용률 엔티티
@freezed
class ItemUsageEntity with _$ItemUsageEntity {
  const factory ItemUsageEntity({
    required String itemName,
    required double usageRate,
    required List<String> commonUsers,
    required String description,
  }) = _ItemUsageEntity;
}

