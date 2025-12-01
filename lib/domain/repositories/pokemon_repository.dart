import '../../../../core/utils/typedef.dart';
import '../entities/pokemon_entity.dart';

/// Pokemon Repository Interface - defines the contract for data operations
abstract class PokemonRepository {
  /// Get a list of pokemon with pagination
  ResultFuture<PokemonListEntity> getPokemonList({
    required int offset,
    required int limit,
  });

  /// Get detailed information about a specific pokemon by ID
  ResultFuture<PokemonEntity> getPokemonById(int id);

  /// Get detailed information about a specific pokemon by name
  ResultFuture<PokemonEntity> getPokemonByName(String name);

  /// Get a list of pokemon with their details
  ResultFuture<List<PokemonEntity>> getPokemonListWithDetails({
    required int offset,
    required int limit,
  });
}

