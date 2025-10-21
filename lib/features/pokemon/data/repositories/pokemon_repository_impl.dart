import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/pokemon_entity.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_remote_datasource.dart';

/// Implementation of Pokemon Repository
/// Handles data operations and converts models to entities
class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  const PokemonRepositoryImpl({required this.remoteDataSource});

  @override
  ResultFuture<PokemonListEntity> getPokemonList({
    required int offset,
    required int limit,
  }) async {
    try {
      final result = await remoteDataSource.getPokemonList(
        offset: offset,
        limit: limit,
      );
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
  ResultFuture<PokemonEntity> getPokemonById(int id) async {
    try {
      final result = await remoteDataSource.getPokemonById(id);
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
  ResultFuture<PokemonEntity> getPokemonByName(String name) async {
    try {
      final result = await remoteDataSource.getPokemonByName(name);
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
  ResultFuture<List<PokemonEntity>> getPokemonListWithDetails({
    required int offset,
    required int limit,
  }) async {
    try {
      // First, get the list
      final listResult = await remoteDataSource.getPokemonList(
        offset: offset,
        limit: limit,
      );

      // Then fetch details for each pokemon
      final pokemonList = <PokemonEntity>[];
      for (final item in listResult.results) {
        try {
          final pokemon = await remoteDataSource.getPokemonById(item.id);
          pokemonList.add(pokemon.toEntity());
        } catch (e) {
          // Continue even if one pokemon fails to load
          continue;
        }
      }

      return Right(pokemonList);
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

