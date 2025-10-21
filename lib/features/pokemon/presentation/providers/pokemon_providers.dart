import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/network/dio_client.dart';
import '../../data/datasources/pokemon_remote_datasource.dart';
import '../../data/repositories/pokemon_repository_impl.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../../domain/usecases/get_pokemon_by_id.dart';
import '../../domain/usecases/get_pokemon_list.dart';
import '../../domain/usecases/get_pokemon_list_with_details.dart';

// ============================================================================
// Core Providers
// ============================================================================

/// Dio Client Provider
final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient();
});

// ============================================================================
// Data Layer Providers
// ============================================================================

/// Remote Data Source Provider
final pokemonRemoteDataSourceProvider =
    Provider<PokemonRemoteDataSource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return PokemonRemoteDataSourceImpl(dioClient: dioClient);
});

/// Repository Provider
final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  final remoteDataSource = ref.watch(pokemonRemoteDataSourceProvider);
  return PokemonRepositoryImpl(remoteDataSource: remoteDataSource);
});

// ============================================================================
// Domain Layer Providers (Use Cases)
// ============================================================================

/// Get Pokemon List Use Case Provider
final getPokemonListUseCaseProvider = Provider<GetPokemonList>((ref) {
  final repository = ref.watch(pokemonRepositoryProvider);
  return GetPokemonList(repository);
});

/// Get Pokemon By ID Use Case Provider
final getPokemonByIdUseCaseProvider = Provider<GetPokemonById>((ref) {
  final repository = ref.watch(pokemonRepositoryProvider);
  return GetPokemonById(repository);
});

/// Get Pokemon List With Details Use Case Provider
final getPokemonListWithDetailsUseCaseProvider =
    Provider<GetPokemonListWithDetails>((ref) {
  final repository = ref.watch(pokemonRepositoryProvider);
  return GetPokemonListWithDetails(repository);
});

