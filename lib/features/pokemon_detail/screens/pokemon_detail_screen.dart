import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../../../domain/entities/pokemon_entity.dart';

class PokemonDetailScreen extends StatelessWidget {
  final PokemonEntity pokemon;

  const PokemonDetailScreen({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final typeColor = _getTypeColor(pokemon.primaryType);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context, typeColor),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    typeColor.withOpacity(0.1),
                    Colors.white,
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  _buildPokemonImage(typeColor),
                  const SizedBox(height: 40),
                  _buildInfoSections(context, typeColor),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context, Color typeColor) {
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      backgroundColor: typeColor,
      foregroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          _capitalizeFirst(pokemon.name),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                typeColor,
                typeColor.withOpacity(0.8),
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 120,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    pokemon.formattedNumber,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pokemon.types.map((type) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: _getTypeColor(type.name),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        type.name.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPokemonImage(Color typeColor) {
    return Hero(
      tag: 'pokemon-${pokemon.id}',
      child: Container(
        width: 240,
        height: 240,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              typeColor.withOpacity(0.2),
              Colors.white,
            ],
          ),
          borderRadius: BorderRadius.circular(120),
          boxShadow: [
            BoxShadow(
              color: typeColor.withOpacity(0.3),
              blurRadius: 25,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(120),
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
    );
  }

  Widget _buildInfoSections(BuildContext context, Color typeColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _buildInfoCard(
            context,
            '기본 정보',
            Icons.info_outline,
            typeColor,
            [
              _buildInfoRow('키', _formatHeight(pokemon.height)),
              _buildInfoRow('무게', _formatWeight(pokemon.weight)),
              _buildInfoRow('타입', pokemon.types.map((t) => t.name).join(', ')),
            ],
          ),
          const SizedBox(height: 20),
          _buildInfoCard(
            context,
            '능력치',
            Icons.trending_up,
            typeColor,
            pokemon.stats.map((stat) {
              return _buildStatRow(
                _formatStatName(stat.name),
                stat.baseStat,
                typeColor,
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          _buildInfoCard(
            context,
            '특성',
            Icons.auto_awesome,
            typeColor,
            pokemon.abilities.map((ability) {
              return _buildInfoRow(
                ability.name.toUpperCase(),
                ability.isHidden ? '(숨겨진 특성)' : '',
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context,
    String title,
    IconData icon,
    Color typeColor,
    List<Widget> children,
  ) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: typeColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon, color: Colors.white, size: 24),
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: typeColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ...children,
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, int value, Color typeColor) {
    final percentage = value / AppConstants.maxStatValue;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: typeColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey.shade200,
              valueColor: AlwaysStoppedAnimation<Color>(typeColor),
              minHeight: 12,
            ),
          ),
        ],
      ),
    );
  }

  Color _getTypeColor(String type) {
    final colorValue = PokemonTypeConstants.typeColors[type.toLowerCase()];
    return colorValue != null ? Color(colorValue) : Colors.grey;
  }

  String _capitalizeFirst(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

  String _formatHeight(int height) {
    return '${height / 10}m';
  }

  String _formatWeight(int weight) {
    return '${weight / 10}kg';
  }

  String _formatStatName(String statName) {
    return PokemonTypeConstants.statDisplayNames[statName.toLowerCase()] ??
        statName;
  }
}

