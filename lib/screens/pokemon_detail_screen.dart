import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../utils/pokemon_utils.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailScreen({
    super.key,
    required this.pokemon,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PokemonTypeColors.getTypeColorWithOpacity(pokemon.primaryType, 0.1),
      appBar: AppBar(
        title: Text(
          pokemon.name.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: PokemonTypeColors.getTypeColor(pokemon.primaryType),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Pokemon Image Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    PokemonTypeColors.getTypeColorWithOpacity(pokemon.primaryType, 0.3),
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                children: [
                  // Pokemon Number
                  Text(
                    PokemonUtils.formatPokemonNumber(pokemon.id),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Pokemon Image
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        pokemon.imageUrl,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.image_not_supported,
                            size: 80,
                            color: Colors.grey,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Type badges
                  Wrap(
                    spacing: 8,
                    children: pokemon.types.map((type) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: PokemonTypeColors.getTypeColor(type.type.name),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          type.type.name.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            
            // Pokemon Stats Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Basic Info
                  _buildInfoSection(
                    '기본 정보',
                    [
                      _buildInfoRow('키', PokemonUtils.formatHeight(pokemon.height)),
                      _buildInfoRow('무게', PokemonUtils.formatWeight(pokemon.weight)),
                    ],
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Stats
                  _buildInfoSection(
                    '능력치',
                    pokemon.stats.map((stat) {
                      return _buildStatRow(
                        PokemonUtils.formatStatName(stat.stat.name),
                        stat.baseStat,
                      );
                    }).toList(),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Abilities
                  _buildInfoSection(
                    '특성',
                    pokemon.abilities.map((ability) {
                      return _buildInfoRow(
                        ability.ability.name.toUpperCase(),
                        ability.isHidden ? '(숨겨진 특성)' : '',
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 12),
        ...children,
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                value.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: value / PokemonConstants.maxStatValue,
            backgroundColor: Colors.grey.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(
              PokemonTypeColors.getTypeColor(pokemon.primaryType),
            ),
            minHeight: 6,
          ),
        ],
      ),
    );
  }
}
