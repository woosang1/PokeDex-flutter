import '../../../../core/utils/typedef.dart';
import '../entities/pokemon_entity.dart';
import '../repositories/pokemon_repository.dart';

/// Use case for getting a list of pokemon
/// Follows Single Responsibility Principle
class GetPokemonList {
  final PokemonRepository repository;

  const GetPokemonList(this.repository);

  ResultFuture<PokemonListEntity> call({
    required int offset,
    required int limit,
  }) async {
    return await repository.getPokemonList(
      offset: offset,
      limit: limit,
    );
  }
}

