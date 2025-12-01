import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../core/network/dio_client.dart';
import '../../../data/datasources/pokemon_remote_datasource.dart';
import '../../../data/datasources/meta_remote_datasource.dart';
import '../../../data/repositories/pokemon_repository_impl.dart';
import '../../../data/repositories/meta_repository_impl.dart';
import '../../../domain/repositories/pokemon_repository.dart';
import '../../../domain/repositories/meta_repository.dart';
import '../../../domain/usecases/get_pokemon_by_id.dart';
import '../../../domain/usecases/get_pokemon_list.dart';
import '../../../domain/usecases/get_pokemon_list_with_details.dart';
import '../../../domain/usecases/meta_usecases.dart';

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

/// Meta Remote Data Source Provider
final metaRemoteDataSourceProvider = Provider<MetaRemoteDataSource>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return MetaRemoteDataSourceImpl(dioClient: dioClient);
});

/// Repository Provider
final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  final remoteDataSource = ref.watch(pokemonRemoteDataSourceProvider);
  return PokemonRepositoryImpl(remoteDataSource: remoteDataSource);
});

/// Meta Repository Provider
final metaRepositoryProvider = Provider<MetaRepository>((ref) {
  final remoteDataSource = ref.watch(metaRemoteDataSourceProvider);
  return MetaRepositoryImpl(remoteDataSource: remoteDataSource);
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

// Meta Use Cases
final getGameMetaDataUseCaseProvider = Provider<GetGameMetaData>((ref) {
  final repository = ref.watch(metaRepositoryProvider);
  return GetGameMetaData(repository);
});

final getPokemonRankingsUseCaseProvider = Provider<GetPokemonRankings>((ref) {
  final repository = ref.watch(metaRepositoryProvider);
  return GetPokemonRankings(repository);
});

final getPokemonMetaUseCaseProvider = Provider<GetPokemonMeta>((ref) {
  final repository = ref.watch(metaRepositoryProvider);
  return GetPokemonMeta(repository);
});

final getPopularTeamCompositionsUseCaseProvider = Provider<GetPopularTeamCompositions>((ref) {
  final repository = ref.watch(metaRepositoryProvider);
  return GetPopularTeamCompositions(repository);
});

final getItemUsageRatesUseCaseProvider = Provider<GetItemUsageRates>((ref) {
  final repository = ref.watch(metaRepositoryProvider);
  return GetItemUsageRates(repository);
});

