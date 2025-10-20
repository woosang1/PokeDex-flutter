import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../services/pokemon_api_service.dart';
import '../utils/pokemon_utils.dart';
import 'pokemon_detail_screen.dart';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  List<Pokemon> _pokemonList = [];
  bool _isLoading = false;
  bool _hasError = false;
  String _errorMessage = '';
  int _currentOffset = 0;
  static const int _limit = PokemonConstants.pokemonPerPage;

  @override
  void initState() {
    super.initState();
    _loadPokemonList();
  }

  Future<void> _loadPokemonList({bool loadMore = false}) async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
      _hasError = false;
      if (!loadMore) {
        _currentOffset = 0;
        _pokemonList.clear();
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
      });
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
      appBar: AppBar(
        title: const Text(
          'Pokédex',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: PokemonTypeColors.getTypeColor('fire'),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: _hasError
          ? _buildErrorWidget()
          : RefreshIndicator(
              onRefresh: _refreshPokemonList,
              child: _pokemonList.isEmpty && _isLoading
                  ? _buildLoadingWidget()
                  : _buildPokemonList(),
            ),
    );
  }

  Widget _buildErrorWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red.shade300,
          ),
          const SizedBox(height: 16),
          Text(
            '오류가 발생했습니다',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            _errorMessage,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _refreshPokemonList,
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 16),
          Text('포켓몬을 불러오는 중...'),
        ],
      ),
    );
  }

  Widget _buildPokemonList() {
    return ListView.builder(
      itemCount: _pokemonList.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == _pokemonList.length) {
          // Loading indicator for pagination
          return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final pokemon = _pokemonList[index];
        
        // Load more when reaching the end
        if (index == _pokemonList.length - 1) {
          _loadMorePokemon();
        }

        return _buildPokemonCard(pokemon);
      },
    );
  }

  Widget _buildPokemonCard(Pokemon pokemon) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PokemonDetailScreen(pokemon: pokemon),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Pokemon Image
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade100,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    pokemon.imageUrl,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.image_not_supported,
                        size: 40,
                        color: Colors.grey,
                      );
                    },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Pokemon Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      PokemonUtils.formatPokemonNumber(pokemon.id),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      pokemon.name.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Type badges
                    Wrap(
                      spacing: 4,
                      children: pokemon.types.take(2).map((type) {
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                        decoration: BoxDecoration(
                          color: PokemonTypeColors.getTypeColor(type.type.name),
                          borderRadius: BorderRadius.circular(12),
                        ),
                          child: Text(
                            type.type.name.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Arrow icon
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade400,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
