import '../../../../core/utils/typedef.dart';
import '../entities/pokemon_entity.dart';
import '../repositories/pokemon_repository.dart';

/// Use case for getting a pokemon by ID
class GetPokemonById {
  final PokemonRepository repository;

  const GetPokemonById(this.repository);

  ResultFuture<PokemonEntity> call(int id) async {
    return await repository.getPokemonById(id);
  }
}

