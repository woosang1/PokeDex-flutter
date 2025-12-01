import '../../../../core/utils/typedef.dart';
import '../entities/meta_entity.dart';

/// 메타데이터 Repository 인터페이스
abstract class MetaRepository {
  /// 게임별 메타데이터 조회
  ResultFuture<List<GameMetaEntity>> getGameMetaData();

  /// 특정 게임의 포켓몬 랭킹 조회
  ResultFuture<List<PokemonMetaEntity>> getPokemonRankings(String gameName);

  /// 포켓몬별 상세 메타데이터 조회
  ResultFuture<PokemonMetaEntity> getPokemonMeta(int pokemonId, String gameName);

  /// 인기 팀 조합 조회
  ResultFuture<List<TeamCompositionEntity>> getPopularTeamCompositions(String gameName);

  /// 아이템 사용률 조회
  ResultFuture<List<ItemUsageEntity>> getItemUsageRates(String gameName);

  /// 포켓몬 상성 데이터 조회
  ResultFuture<Map<String, double>> getPokemonMatchups(int pokemonId, String gameName);
}

