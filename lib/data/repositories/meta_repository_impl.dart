import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/meta_entity.dart';
import '../../domain/repositories/meta_repository.dart';
import '../datasources/meta_remote_datasource.dart';

/// 메타데이터 Repository 구현체
class MetaRepositoryImpl implements MetaRepository {
  final MetaRemoteDataSource remoteDataSource;

  const MetaRepositoryImpl({required this.remoteDataSource});

  @override
  ResultFuture<List<GameMetaEntity>> getGameMetaData() async {
    try {
      final result = await remoteDataSource.getGameMetaData();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  ResultFuture<List<PokemonMetaEntity>> getPokemonRankings(String gameName) async {
    try {
      final result = await remoteDataSource.getPokemonRankings(gameName);
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  ResultFuture<PokemonMetaEntity> getPokemonMeta(int pokemonId, String gameName) async {
    try {
      final result = await remoteDataSource.getPokemonMeta(pokemonId, gameName);
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  ResultFuture<List<TeamCompositionEntity>> getPopularTeamCompositions(String gameName) async {
    try {
      final result = await remoteDataSource.getPopularTeamCompositions(gameName);
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  ResultFuture<List<ItemUsageEntity>> getItemUsageRates(String gameName) async {
    try {
      final result = await remoteDataSource.getItemUsageRates(gameName);
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  ResultFuture<Map<String, double>> getPokemonMatchups(int pokemonId, String gameName) async {
    try {
      final result = await remoteDataSource.getPokemonMatchups(pokemonId, gameName);
      return Right(result);
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}

