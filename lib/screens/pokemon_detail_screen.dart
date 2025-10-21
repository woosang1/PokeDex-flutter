import 'package:flutter/material.dart';
import '../models/pokemon.dart';
import '../utils/pokemon_utils.dart';
import '../utils/pokemon_type_effectiveness.dart';
import '../widgets/animated_widgets.dart';
import '../widgets/pokemon_detail_widgets.dart';

class PokemonDetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonDetailScreen({
    super.key,
    required this.pokemon,
  });


  @override
  Widget build(BuildContext context) {
    final primaryType = pokemon.primaryType;
    final typeColor = PokemonTypeColors.getTypeColor(primaryType);
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Enhanced App Bar
          _buildEnhancedSliverAppBar(typeColor),
          
          // Content
          SliverToBoxAdapter(
            child: ParticleBackground(
              particleColor: typeColor.withOpacity(0.3),
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 1500,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      typeColor.withOpacity(0.1),
                      Colors.white,
                      Colors.white,
                    ],
                    stops: const [0.0, 0.3, 1.0],
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 30),
                    
                    // Enhanced Pokemon Image Section
                    _buildEnhancedPokemonImageSection(typeColor),
                    
                    const SizedBox(height: 40),
                    
                    // Enhanced Info Sections
                    _buildEnhancedInfoSections(typeColor),
                    
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEnhancedSliverAppBar(Color typeColor) {
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      backgroundColor: typeColor,
      foregroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          PokemonUtils.capitalizeFirst(pokemon.name),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
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
                typeColor.withOpacity(0.6),
                typeColor.withOpacity(0.4),
              ],
            ),
          ),
          child: Stack(
            children: [
              // Background Pattern
              Positioned(
                right: -100,
                top: -100,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
              Positioned(
                left: -50,
                bottom: -50,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.05),
                  ),
                ),
              ),
              Positioned(
                right: 50,
                top: 100,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.08),
                  ),
                ),
              ),
              
              // Pokemon Number with enhanced styling
              Positioned(
                top: 120,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    PokemonUtils.formatPokemonNumber(pokemon.id),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          color: Colors.black26,
                          offset: Offset(0, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              // Floating type badges
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
                        gradient: LinearGradient(
                          colors: [
                            PokemonTypeColors.getTypeColor(type.type.name),
                            PokemonTypeColors.getTypeColor(type.type.name).withOpacity(0.8),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: PokemonTypeColors.getTypeColor(type.type.name).withOpacity(0.4),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Text(
                        type.type.name.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              offset: Offset(0, 1),
                              blurRadius: 2,
                            ),
                          ],
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

  Widget _buildEnhancedPokemonImageSection(Color typeColor) {
    return Column(
      children: [
        FloatingPokemonCard(
          child: GlowingContainer(
            glowColor: typeColor,
            blurRadius: 25,
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    typeColor.withOpacity(0.2),
                    typeColor.withOpacity(0.1),
                    Colors.white.withOpacity(0.8),
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
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Image.network(
                  pokemon.imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(120),
                      ),
                      child: const Icon(
                        Icons.image_not_supported,
                        size: 80,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 20),
        
        // Pokemon Name and Number
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                typeColor.withOpacity(0.1),
                typeColor.withOpacity(0.05),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: typeColor.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Text(
                PokemonUtils.capitalizeFirst(pokemon.name),
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: typeColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                PokemonUtils.formatPokemonNumber(pokemon.id),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: typeColor.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEnhancedInfoSections(Color typeColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Type Effectiveness Chart
          _buildEnhancedTypeEffectivenessSection(typeColor),
          
          const SizedBox(height: 25),
          
          // Basic Info
          _buildEnhancedInfoSection(
            '기본 정보',
            Icons.info_outline,
            typeColor,
            [
              _buildEnhancedInfoRow('키', PokemonUtils.formatHeight(pokemon.height), typeColor),
              _buildEnhancedInfoRow('무게', PokemonUtils.formatWeight(pokemon.weight), typeColor),
              _buildEnhancedInfoRow('타입', pokemon.types.map((t) => t.type.name).join(', '), typeColor),
            ],
          ),
          
          const SizedBox(height: 25),
          
          // Stats
          _buildEnhancedInfoSection(
            '능력치',
            Icons.trending_up,
            typeColor,
            pokemon.stats.map((stat) {
              return _buildEnhancedStatRow(
                PokemonUtils.formatStatName(stat.stat.name),
                stat.baseStat,
                typeColor,
              );
            }).toList(),
          ),
          
          const SizedBox(height: 25),
          
          // Abilities
          _buildEnhancedInfoSection(
            '특성',
            Icons.auto_awesome,
            typeColor,
            pokemon.abilities.map((ability) {
              return _buildEnhancedInfoRow(
                ability.ability.name.toUpperCase(),
                ability.isHidden ? '(숨겨진 특성)' : '',
                typeColor,
              );
            }).toList(),
          ),
          
          const SizedBox(height: 25),
          
          // Additional Info
          _buildEnhancedInfoSection(
            '추가 정보',
            Icons.more_horiz,
            typeColor,
            [
              _buildEnhancedInfoRow('포켓몬 번호', '#${pokemon.id.toString().padLeft(3, '0')}', typeColor),
              _buildEnhancedInfoRow('총 능력치', '${pokemon.stats.fold(0, (sum, stat) => sum + stat.baseStat)}', typeColor),
              _buildEnhancedInfoRow('타입 개수', '${pokemon.types.length}개', typeColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEnhancedTypeEffectivenessSection(Color typeColor) {
    final primaryType = pokemon.primaryType;
    final strongAgainst = PokemonTypeEffectiveness.getStrongAgainst(primaryType);
    final weakAgainst = PokemonTypeEffectiveness.getWeakAgainst(primaryType);
    final noEffectAgainst = PokemonTypeEffectiveness.getNoEffectAgainst(primaryType);
    
    return GlowingContainer(
      glowColor: typeColor,
      blurRadius: 20,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.95),
              Colors.white.withOpacity(0.85),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: typeColor.withOpacity(0.2),
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        typeColor,
                        typeColor.withOpacity(0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: typeColor.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.shield,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  '타입 상성',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: typeColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            TypeEffectivenessChart(
              pokemonType: primaryType,
              strongAgainst: strongAgainst,
              weakAgainst: weakAgainst,
              noEffectAgainst: noEffectAgainst,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEnhancedInfoSection(String title, IconData icon, Color typeColor, List<Widget> children) {
    return GlowingContainer(
      glowColor: typeColor,
      blurRadius: 15,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.95),
              Colors.white.withOpacity(0.85),
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: typeColor.withOpacity(0.2),
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        typeColor,
                        typeColor.withOpacity(0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: typeColor.withOpacity(0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 24,
                  ),
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
      ),
    );
  }

  Widget _buildEnhancedInfoRow(String label, String value, Color typeColor) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.grey.shade50,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: typeColor.withOpacity(0.1),
          width: 1,
        ),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  typeColor.withOpacity(0.1),
                  typeColor.withOpacity(0.05),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: typeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEnhancedStatRow(String label, int value, Color typeColor) {
    final percentage = value / PokemonConstants.maxStatValue;
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.grey.shade50,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: typeColor.withOpacity(0.1),
          width: 1,
        ),
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      typeColor.withOpacity(0.2),
                      typeColor.withOpacity(0.1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  value.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: typeColor,
                  ),
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
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '${(percentage * 100).toInt()}%',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}


