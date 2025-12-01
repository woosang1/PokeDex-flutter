import '../../../../core/utils/typedef.dart';
import '../entities/pokemon_entity.dart';
import '../repositories/pokemon_repository.dart';

/// Use case for getting a list of pokemon with full details
class GetPokemonListWithDetails {
  final PokemonRepository repository;

  const GetPokemonListWithDetails(this.repository);

  ResultFuture<List<PokemonEntity>> call({
    required int offset,
    required int limit,
  }) async {
    return await repository.getPokemonListWithDetails(
      offset: offset,
      limit: limit,
    );
  }
}

