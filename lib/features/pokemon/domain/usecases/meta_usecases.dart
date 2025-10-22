import '../../../../core/utils/typedef.dart';
import '../entities/meta_entity.dart';
import '../repositories/meta_repository.dart';

/// 게임별 메타데이터 조회 Use Case
class GetGameMetaData {
  final MetaRepository repository;

  const GetGameMetaData(this.repository);

  ResultFuture<List<GameMetaEntity>> call() async {
    return await repository.getGameMetaData();
  }
}

/// 포켓몬 랭킹 조회 Use Case
class GetPokemonRankings {
  final MetaRepository repository;

  const GetPokemonRankings(this.repository);

  ResultFuture<List<PokemonMetaEntity>> call(String gameName) async {
    return await repository.getPokemonRankings(gameName);
  }
}

/// 포켓몬 상세 메타데이터 조회 Use Case
class GetPokemonMeta {
  final MetaRepository repository;

  const GetPokemonMeta(this.repository);

  ResultFuture<PokemonMetaEntity> call(int pokemonId, String gameName) async {
    return await repository.getPokemonMeta(pokemonId, gameName);
  }
}

/// 인기 팀 조합 조회 Use Case
class GetPopularTeamCompositions {
  final MetaRepository repository;

  const GetPopularTeamCompositions(this.repository);

  ResultFuture<List<TeamCompositionEntity>> call(String gameName) async {
    return await repository.getPopularTeamCompositions(gameName);
  }
}

/// 아이템 사용률 조회 Use Case
class GetItemUsageRates {
  final MetaRepository repository;

  const GetItemUsageRates(this.repository);

  ResultFuture<List<ItemUsageEntity>> call(String gameName) async {
    return await repository.getItemUsageRates(gameName);
  }
}

