import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/filter_entity.dart';
import 'pokemon_list_provider.dart';

/// Filter State Notifier
class FilterNotifier extends StateNotifier<FilterEntity> {
  FilterNotifier() : super(const FilterEntity());

  /// Update selected generation
  void setGeneration(GenerationEntity? generation) {
    state = state.copyWith(
      selectedGeneration: generation,
      currentPage: 1, // Reset to first page
    );
  }

  /// Toggle type selection
  void toggleType(String type) {
    final types = List<String>.from(state.selectedTypes);
    if (types.contains(type)) {
      types.remove(type);
    } else {
      types.add(type);
    }
    state = state.copyWith(
      selectedTypes: types,
      currentPage: 1, // Reset to first page
    );
  }

  /// Clear all filters
  void clearFilters() {
    state = const FilterEntity();
  }

  /// Set page
  void setPage(int page) {
    state = state.copyWith(currentPage: page);
  }

  /// Set items per page
  void setItemsPerPage(int itemsPerPage) {
    state = state.copyWith(
      itemsPerPage: itemsPerPage,
      currentPage: 1, // Reset to first page
    );
  }
}

/// Filter Provider
final filterProvider = StateNotifierProvider<FilterNotifier, FilterEntity>(
  (ref) => FilterNotifier(),
);

/// Filtered Pokemon List Provider
/// This combines the pokemon list with the current filter
final filteredPokemonListProvider = Provider((ref) {
  final pokemonList = ref.watch(pokemonListProvider).pokemonList;
  final filter = ref.watch(filterProvider);

  // Apply filters
  final filtered = pokemonList.where((pokemon) {
    // Generation filter
    if (filter.selectedGeneration != null) {
      final gen = filter.selectedGeneration!;
      if (pokemon.id < gen.startId || pokemon.id > gen.endId) {
        return false;
      }
    }

    // Type filter
    if (filter.selectedTypes.isNotEmpty) {
      final pokemonTypes = pokemon.types.map((t) => t.name).toList();
      if (!filter.selectedTypes.any((type) => pokemonTypes.contains(type))) {
        return false;
      }
    }

    return true;
  }).toList();

  return filtered;
});

/// Paginated Pokemon List Provider
/// Returns the current page of filtered pokemon
final paginatedPokemonListProvider = Provider((ref) {
  final filtered = ref.watch(filteredPokemonListProvider);
  final filter = ref.watch(filterProvider);

  if (!filter.hasActiveFilters) {
    // Return all if no filters active (infinite scroll mode)
    return filtered;
  }

  // Calculate pagination
  final startIndex = (filter.currentPage - 1) * filter.itemsPerPage;

  return filtered.skip(startIndex).take(filter.itemsPerPage).toList();
});

/// Total Pages Provider
final totalPagesProvider = Provider((ref) {
  final filtered = ref.watch(filteredPokemonListProvider);
  final filter = ref.watch(filterProvider);

  final totalPages = (filtered.length / filter.itemsPerPage).ceil();
  return totalPages > 0 ? totalPages : 1;
});

