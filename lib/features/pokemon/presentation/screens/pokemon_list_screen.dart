import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/filter_provider.dart';
import '../providers/pokemon_list_provider.dart';
import '../widgets/filter_bottom_sheet.dart';
import '../widgets/loading_widget.dart' as custom;
import '../widgets/pokemon_card_widget.dart';
import 'pokemon_detail_screen.dart';
import 'meta_data_screen.dart';

class PokemonListScreen extends ConsumerStatefulWidget {
  const PokemonListScreen({super.key});

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Load pokemon list on init
    Future.microtask(
      () => ref.read(pokemonListProvider.notifier).loadPokemonList(),
    );
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final filter = ref.read(filterProvider);
    
    // Only auto-load when no filters are active
    if (!filter.hasActiveFilters &&
        _scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.8) {
      ref.read(pokemonListProvider.notifier).loadMorePokemon();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pokemonListProvider);
    final filter = ref.watch(filterProvider);
    final displayList = ref.watch(paginatedPokemonListProvider);
    final totalPages = ref.watch(totalPagesProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6C5CE7),
              Color(0xFFA29BFE),
              Color(0xFFDDD6FE),
            ],
            stops: [0.0, 0.6, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildAppBar(state),
              _buildFilterButton(filter),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: _buildContent(state, displayList),
                      ),
                      if (filter.hasActiveFilters && displayList.isNotEmpty)
                        _buildPagination(filter, totalPages),
                      if (!filter.hasActiveFilters && state.pokemonList.isNotEmpty)
                        _buildInfiniteScrollIndicator(state),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(PokemonListState state) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.catching_pokemon,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pokédex',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 28,
                      ),
                ),
                Text(
                  '포켓몬을 탐험해보세요',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              // 신규 컨텐츠 버튼
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.orange, Colors.deepOrange],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MetaDataScreen(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.trending_up, color: Colors.white, size: 16),
                          const SizedBox(width: 4),
                          const Text(
                            '메타데이터',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // 포켓몬 수 카운터
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.pets, color: Colors.white, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '${state.pokemonList.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButton(filter) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const FilterBottomSheet(),
                );
              },
              icon: Icon(
                filter.hasActiveFilters
                    ? Icons.filter_alt
                    : Icons.filter_alt_outlined,
                size: 20,
              ),
              label: Text(filter.hasActiveFilters ? '필터 적용됨' : '필터'),
              style: ElevatedButton.styleFrom(
                backgroundColor: filter.hasActiveFilters
                    ? const Color(0xFF6C5CE7)
                    : Colors.white,
                foregroundColor: filter.hasActiveFilters
                    ? Colors.white
                    : const Color(0xFF6C5CE7),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          if (filter.hasActiveFilters) ...[
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {
                ref.read(filterProvider.notifier).clearFilters();
              },
              icon: const Icon(Icons.clear),
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildContent(PokemonListState state, List displayList) {
    if (state.errorMessage != null && state.pokemonList.isEmpty) {
      return custom.ErrorWidget(
        message: state.errorMessage!,
        onRetry: () {
          ref.read(pokemonListProvider.notifier).loadPokemonList();
        },
      );
    }

    if (state.isLoading && state.pokemonList.isEmpty) {
      return const custom.LoadingWidget(message: '포켓몬을 불러오는 중...');
    }

    if (displayList.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              '필터 조건에 맞는 포켓몬이 없습니다',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(pokemonListProvider.notifier).refreshPokemonList();
      },
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        itemCount: displayList.length +
            (state.isLoadingMore && !ref.read(filterProvider).hasActiveFilters
                ? 1
                : 0),
        itemBuilder: (context, index) {
          if (index == displayList.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6C5CE7)),
                ),
              ),
            );
          }

          final pokemon = displayList[index];
          return PokemonCardWidget(
            pokemon: pokemon,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PokemonDetailScreen(pokemon: pokemon),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildPagination(filter, int totalPages) {
    if (totalPages <= 1) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: filter.currentPage > 1
                ? () => ref.read(filterProvider.notifier).setPage(filter.currentPage - 1)
                : null,
            icon: const Icon(Icons.chevron_left),
            style: IconButton.styleFrom(
              backgroundColor: filter.currentPage > 1
                  ? const Color(0xFF6C5CE7)
                  : Colors.grey.shade300,
              foregroundColor: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '${filter.currentPage} / $totalPages',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 16),
          IconButton(
            onPressed: filter.currentPage < totalPages
                ? () => ref.read(filterProvider.notifier).setPage(filter.currentPage + 1)
                : null,
            icon: const Icon(Icons.chevron_right),
            style: IconButton.styleFrom(
              backgroundColor: filter.currentPage < totalPages
                  ? const Color(0xFF6C5CE7)
                  : Colors.grey.shade300,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfiniteScrollIndicator(PokemonListState state) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            state.hasMore ? Icons.arrow_downward : Icons.check_circle,
            size: 16,
            color: Colors.grey,
          ),
          const SizedBox(width: 8),
          Text(
            state.hasMore ? '아래로 스크롤하여 더 보기' : '모든 포켓몬을 불러왔습니다',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

