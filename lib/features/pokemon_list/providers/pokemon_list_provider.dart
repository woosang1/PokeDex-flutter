import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_constants.dart';
import '../../../domain/entities/pokemon_entity.dart';
import '../../../domain/usecases/get_pokemon_list_with_details.dart';
import '../../shared/providers/pokemon_providers.dart';

/// Pokemon List State
class PokemonListState {
  final List<PokemonEntity> pokemonList;
  final bool isLoading;
  final bool isLoadingMore;
  final String? errorMessage;
  final int currentOffset;
  final bool hasMore;

  const PokemonListState({
    this.pokemonList = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.errorMessage,
    this.currentOffset = 0,
    this.hasMore = true,
  });

  PokemonListState copyWith({
    List<PokemonEntity>? pokemonList,
    bool? isLoading,
    bool? isLoadingMore,
    String? errorMessage,
    int? currentOffset,
    bool? hasMore,
  }) {
    return PokemonListState(
      pokemonList: pokemonList ?? this.pokemonList,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: errorMessage,
      currentOffset: currentOffset ?? this.currentOffset,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

/// Pokemon List Notifier
class PokemonListNotifier extends StateNotifier<PokemonListState> {
  final GetPokemonListWithDetails _getPokemonListWithDetails;

  PokemonListNotifier({
    required GetPokemonListWithDetails getPokemonListWithDetails,
  })  : _getPokemonListWithDetails = getPokemonListWithDetails,
        super(const PokemonListState());

  /// Load initial pokemon list
  Future<void> loadPokemonList() async {
    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      currentOffset: 0,
      pokemonList: [],
      hasMore: true,
    );

    final result = await _getPokemonListWithDetails(
      offset: 0,
      limit: AppConstants.pokemonPerPage,
    );

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: failure.when(
            server: (message, statusCode) => message,
            network: (message) => message,
            cache: (message) => message,
            notFound: (message) => message,
            unknown: (message) => message,
          ),
        );
      },
      (pokemonList) {
        state = state.copyWith(
          isLoading: false,
          pokemonList: pokemonList,
          currentOffset: AppConstants.pokemonPerPage,
          hasMore: pokemonList.length >= AppConstants.pokemonPerPage,
        );
      },
    );
  }

  /// Load more pokemon (infinite scroll)
  Future<void> loadMorePokemon() async {
    if (state.isLoadingMore || !state.hasMore) return;

    state = state.copyWith(isLoadingMore: true);

    final result = await _getPokemonListWithDetails(
      offset: state.currentOffset,
      limit: AppConstants.pokemonPerPage,
    );

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoadingMore: false,
          errorMessage: failure.when(
            server: (message, statusCode) => message,
            network: (message) => message,
            cache: (message) => message,
            notFound: (message) => message,
            unknown: (message) => message,
          ),
        );
      },
      (pokemonList) {
        final currentList = List<PokemonEntity>.from(state.pokemonList);
        final newPokemon = List<PokemonEntity>.from(pokemonList);
        final updatedList = [...currentList, ...newPokemon];
        state = state.copyWith(
          isLoadingMore: false,
          pokemonList: updatedList,
          currentOffset: state.currentOffset + AppConstants.pokemonPerPage,
          hasMore: pokemonList.length >= AppConstants.pokemonPerPage &&
              updatedList.length < 1000,
        );
      },
    );
  }

  /// Refresh pokemon list
  Future<void> refreshPokemonList() async {
    await loadPokemonList();
  }
}

/// Pokemon List Provider
final pokemonListProvider =
    StateNotifierProvider<PokemonListNotifier, PokemonListState>((ref) {
  final getPokemonListWithDetails =
      ref.watch(getPokemonListWithDetailsUseCaseProvider);
  return PokemonListNotifier(
    getPokemonListWithDetails: getPokemonListWithDetails,
  );
});

