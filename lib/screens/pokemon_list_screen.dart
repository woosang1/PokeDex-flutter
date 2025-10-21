import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../services/pokemon_api_service.dart';
import '../utils/pokemon_utils.dart';
import '../utils/pokemon_filters.dart';
import '../widgets/animated_widgets.dart';
import '../widgets/common_widgets.dart';
import '../widgets/filter_widgets.dart';
import 'pokemon_detail_screen.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  List<Pokemon> _pokemonList = [];
  List<Pokemon> _filteredPokemonList = [];
  bool _isLoading = false;
  bool _hasError = false;
  String _errorMessage = '';
  int _currentOffset = 0;
  static const int _limit = PokemonConstants.pokemonPerPage;
  
  // Filter state
  PokemonFilterState _filterState = const PokemonFilterState();
  int _totalPages = 1;
  
  // Scroll controller for infinite scroll
  final ScrollController _scrollController = ScrollController();
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _loadPokemonList();
    _scrollController.addListener(_onScroll);
  }
  
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  
  void _onScroll() {
    // Only auto-load more when no filters are active (infinite scroll mode)
    if (!_filterState.hasActiveFilters && 
        _scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.8) {
      // When scrolled to 80% of the list
      if (!_isLoading && _hasMore) {
        _loadMorePokemon();
      }
    }
  }

  void _applyFilters() {
    _filteredPokemonList = _pokemonList.where((pokemon) {
      // Generation filter
      if (_filterState.selectedGeneration != null) {
        final generation = _filterState.selectedGeneration!;
        if (pokemon.id < generation.startId || pokemon.id > generation.endId) {
          return false;
        }
      }
      
      // Type filter
      if (_filterState.selectedTypes.isNotEmpty) {
        final pokemonTypes = pokemon.types.map((t) => t.type.name).toList();
        if (!_filterState.selectedTypes.any((type) => pokemonTypes.contains(type))) {
          return false;
        }
      }
      
      return true;
    }).toList();
    
    _calculateTotalPages();
    setState(() {});
  }

  void _calculateTotalPages() {
    _totalPages = (_filteredPokemonList.length / _filterState.itemsPerPage).ceil();
    if (_totalPages == 0) _totalPages = 1;
  }

  List<Pokemon> _getCurrentPagePokemon() {
    final startIndex = (_filterState.currentPage - 1) * _filterState.itemsPerPage;
    final endIndex = startIndex + _filterState.itemsPerPage;
    return _filteredPokemonList.skip(startIndex).take(_filterState.itemsPerPage).toList();
  }

  void _onFilterChanged(PokemonFilterState newFilter) {
    setState(() {
      _filterState = newFilter;
    });
    _applyFilters();
  }

  void _onPageChanged(int page) {
    setState(() {
      _filterState = _filterState.copyWith(currentPage: page);
    });
  }

  Future<void> _loadPokemonList({bool loadMore = false}) async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
      _hasError = false;
      if (!loadMore) {
        _currentOffset = 0;
        _pokemonList.clear();
        _hasMore = true;
      }
    });

    try {
      final pokemonList = await PokemonApiService.getPokemonListWithDetails(
        offset: _currentOffset,
        limit: _limit,
      );

      setState(() {
        if (loadMore) {
          _pokemonList.addAll(pokemonList);
        } else {
          _pokemonList = pokemonList;
        }
        _currentOffset += _limit;
        _isLoading = false;
        
        // Check if there are more pokemon (assuming max is around 1000+)
        if (pokemonList.length < _limit || _pokemonList.length >= 1000) {
          _hasMore = false;
        }
      });
      
      // Apply filters after loading
      _applyFilters();
    } catch (e) {
      setState(() {
        _hasError = true;
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _refreshPokemonList() async {
    await _loadPokemonList(loadMore: false);
  }

  void _loadMorePokemon() {
    _loadPokemonList(loadMore: true);
  }


  @override
  Widget build(BuildContext context) {
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
              // Custom App Bar
              _buildCustomAppBar(),
              
              // Filter Button
              _buildFilterButton(),
              
              // Content
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
                        child: _hasError
                            ? _buildErrorWidget()
                            : RefreshIndicator(
                                onRefresh: _refreshPokemonList,
                                child: _filteredPokemonList.isEmpty && _isLoading
                                    ? _buildLoadingWidget()
                                    : _buildPokemonList(),
                              ),
                      ),
                      
                      // Pagination (only show when filters are active)
                      if (_filteredPokemonList.isNotEmpty && !_isLoading && _filterState.hasActiveFilters)
                        PaginationWidget(
                          currentPage: _filterState.currentPage,
                          totalPages: _totalPages,
                          onPageChanged: _onPageChanged,
                          isLoading: _isLoading,
                        ),
                      
                      // Info text for infinite scroll
                      if (_pokemonList.isNotEmpty && !_filterState.hasActiveFilters)
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _hasMore ? Icons.arrow_downward : Icons.check_circle,
                                size: 16,
                                color: Colors.grey,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _hasMore ? '아래로 스크롤하여 더 보기' : '모든 포켓몬을 불러왔습니다',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
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

  Widget _buildCustomAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          // Pokemon Icon
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
          
          // Title
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
          
          // Stats
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.pets,
                  color: Colors.white,
                  size: 16,
                ),
                const SizedBox(width: 4),
                AnimatedCounter(
                  value: _pokemonList.length,
                  textStyle: const TextStyle(
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
    );
  }

  Widget _buildErrorWidget() {
    return CustomErrorWidget(
      message: _errorMessage,
      onRetry: _refreshPokemonList,
      icon: Icons.wifi_off,
    );
  }

  Widget _buildLoadingWidget() {
    return const LoadingWidget(
      message: '포켓몬을 불러오는 중...',
      size: 50,
    );
  }

  Widget _buildFilterButton() {
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
                  builder: (context) => FilterBottomSheet(
                    currentFilter: _filterState,
                    onFilterChanged: _onFilterChanged,
                  ),
                );
              },
              icon: Icon(
                _filterState.hasActiveFilters ? Icons.filter_alt : Icons.filter_alt_outlined,
                size: 20,
              ),
              label: Text(_filterState.hasActiveFilters ? '필터 적용됨' : '필터'),
              style: ElevatedButton.styleFrom(
                backgroundColor: _filterState.hasActiveFilters 
                    ? const Color(0xFF6C5CE7) 
                    : Colors.white,
                foregroundColor: _filterState.hasActiveFilters 
                    ? Colors.white 
                    : const Color(0xFF6C5CE7),
                elevation: 2,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                    color: const Color(0xFF6C5CE7).withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          if (_filterState.hasActiveFilters) ...[
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {
                setState(() {
                  _filterState = _filterState.clearFilters();
                });
                _applyFilters();
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

  Widget _buildPokemonList() {
    // Use all pokemon when no filters, paginated when filters active
    final displayList = _filterState.hasActiveFilters 
        ? _getCurrentPagePokemon() 
        : _filteredPokemonList;
    
    if (displayList.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              '필터 조건에 맞는 포켓몬이 없습니다',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }
    
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: displayList.length + (_isLoading && !_filterState.hasActiveFilters ? 1 : 0),
      itemBuilder: (context, index) {
        // Show loading indicator at the bottom (only for infinite scroll)
        if (index == displayList.length && !_filterState.hasActiveFilters) {
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

        return AnimatedPokemonCard(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PokemonDetailScreen(pokemon: pokemon),
              ),
            );
          },
          child: _buildPokemonCard(pokemon),
        );
      },
    );
  }

  Widget _buildPokemonCard(Pokemon pokemon) {
    final primaryType = pokemon.primaryType;
    final typeColor = PokemonTypeColors.getTypeColor(primaryType);
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            typeColor.withOpacity(0.1),
            typeColor.withOpacity(0.05),
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: typeColor.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            // Pokemon Image Container
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    typeColor.withOpacity(0.2),
                    typeColor.withOpacity(0.1),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: typeColor.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  pokemon.imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.image_not_supported,
                        size: 40,
                        color: Colors.grey,
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6C5CE7)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 20),
            
            // Pokemon Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Pokemon Number
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: typeColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      PokemonUtils.formatPokemonNumber(pokemon.id),
                      style: TextStyle(
                        color: typeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // Pokemon Name
                  Text(
                    PokemonUtils.capitalizeFirst(pokemon.name),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  
                  // Type badges
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: pokemon.types.take(2).map((type) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              PokemonTypeColors.getTypeColor(type.type.name),
                              PokemonTypeColors.getTypeColor(type.type.name).withOpacity(0.8),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: PokemonTypeColors.getTypeColor(type.type.name).withOpacity(0.3),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          type.type.name.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            
            // Arrow Icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: typeColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: typeColor,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
