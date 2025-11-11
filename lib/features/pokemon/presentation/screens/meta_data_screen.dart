import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/meta_entity.dart';
import '../providers/meta_provider.dart';

class MetaDataScreen extends ConsumerStatefulWidget {
  const MetaDataScreen({super.key});

  @override
  ConsumerState<MetaDataScreen> createState() => _MetaDataScreenState();
}

class _MetaDataScreenState extends ConsumerState<MetaDataScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    // 메타데이터 로드
    Future.microtask(() {
      ref.read(metaProvider.notifier).loadGameMetaData();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final metaState = ref.watch(metaProvider);

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
              _buildAppBar(metaState),
              _buildGameSelector(metaState),
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
                      _buildTabBar(),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            _buildPokemonRankings(metaState),
                            _buildTeamCompositions(metaState),
                            _buildItemUsage(metaState),
                            _buildMetaAnalysis(metaState),
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

  Widget _buildAppBar(MetaState state) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '실전배틀 메타데이터',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                ),
                Text(
                  '최신 랭킹과 전략 분석',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 14,
                      ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.trending_up, color: Colors.white, size: 16),
                const SizedBox(width: 4),
                Text(
                  state.selectedGame ?? '로딩중',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameSelector(MetaState state) {
    if (state.games.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: state.games.map((game) {
            final isSelected = state.selectedGame == game.gameName;
            return Container(
              margin: const EdgeInsets.only(right: 8),
              child: FilterChip(
                label: Text(game.gameName),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    ref.read(metaProvider.notifier).selectGame(game.gameName);
                  }
                },
                selectedColor: const Color(0xFF6C5CE7).withOpacity(0.2),
                checkmarkColor: const Color(0xFF6C5CE7),
                labelStyle: TextStyle(
                  color: isSelected ? const Color(0xFF6C5CE7) : Colors.grey.shade700,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TabBar(
        controller: _tabController,
        labelColor: const Color(0xFF6C5CE7),
        unselectedLabelColor: Colors.grey.shade600,
        indicatorColor: const Color(0xFF6C5CE7),
        indicatorWeight: 3,
        tabs: const [
          Tab(text: '포켓몬 랭킹', icon: Icon(Icons.emoji_events)),
          Tab(text: '팀 조합', icon: Icon(Icons.group)),
          Tab(text: '아이템', icon: Icon(Icons.inventory)),
          Tab(text: '메타 분석', icon: Icon(Icons.analytics)),
        ],
      ),
    );
  }

  Widget _buildPokemonRankings(MetaState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(state.errorMessage!),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(metaProvider.notifier).loadGameMetaData();
              },
              child: const Text('다시 시도'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.pokemonRankings.length,
      itemBuilder: (context, index) {
        final pokemon = state.pokemonRankings[index];
        return _buildPokemonRankingCard(pokemon, index + 1);
      },
    );
  }

  Widget _buildPokemonRankingCard(PokemonMetaEntity pokemon, int rank) {
    final tierColor = _getTierColor(pokemon.tier);
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            tierColor.withOpacity(0.1),
            tierColor.withOpacity(0.05),
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: tierColor.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            // 순위
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [tierColor, tierColor.withOpacity(0.8)],
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  '$rank',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            
            // 포켓몬 이미지
            Hero(
              tag: 'meta-pokemon-${pokemon.pokemonId}',
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      tierColor.withOpacity(0.2),
                      tierColor.withOpacity(0.1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
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
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            
            // 포켓몬 정보
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.pokemonName,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: tierColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          pokemon.tier,
                          style: TextStyle(
                            color: tierColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '사용률: ${pokemon.usageRate.toStringAsFixed(1)}%',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 4,
                    children: pokemon.commonItems.take(3).map((item) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 10),
                        ),
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

  Widget _buildTeamCompositions(MetaState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.teamCompositions.length,
      itemBuilder: (context, index) {
        final team = state.teamCompositions[index];
        return _buildTeamCompositionCard(team);
      },
    );
  }

  Widget _buildTeamCompositionCard(TeamCompositionEntity team) {
    final pokemonWidgets = List.generate(team.pokemonIds.length, (index) {
      final pokemonId = team.pokemonIds[index];
      final name = team.pokemonNames[index];
      final spriteUrl =
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$pokemonId.png';

      return SizedBox(
        width: 80,
        child: Column(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: const Color(0xFF6C5CE7).withOpacity(0.12),
              child: ClipOval(
                child: Image.network(
                  spriteUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.catching_pokemon, color: Color(0xFF6C5CE7));
                  },
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              name,
              style: const TextStyle(
                color: Color(0xFF6C5CE7),
                fontWeight: FontWeight.w600,
                fontSize: 11,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    });

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF6C5CE7).withOpacity(0.1),
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF6C5CE7).withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    team.strategy,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6C5CE7), Color(0xFFA29BFE)],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    '승률 ${team.winRate.toStringAsFixed(1)}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              '사용 횟수: ${team.usageCount}회',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: pokemonWidgets,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemUsage(MetaState state) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.itemUsage.length,
      itemBuilder: (context, index) {
        final item = state.itemUsage[index];
        return _buildItemUsageCard(item);
      },
    );
  }

  Widget _buildItemUsageCard(ItemUsageEntity item) {
    final itemIcon = _getItemIcon(item.itemName);

    final userWidgets = item.commonUsers.map((user) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.orange.withOpacity(0.15),
            child: Text(
              user.substring(0, 1).toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 60,
            child: Text(
              user,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }).toList();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange.withOpacity(0.1),
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.orange.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.orange.withOpacity(0.15),
                  child: Icon(itemIcon, color: Colors.deepOrange, size: 24),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.itemName,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item.description,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.orange, Colors.deepOrange],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    '${item.usageRate.toStringAsFixed(1)}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '주요 사용자:',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: userWidgets,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetaAnalysis(MetaState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAnalysisCard(
            '메타 트렌드',
            Icons.trending_up,
            const Color(0xFF6C5CE7),
            [
              '현재 메타는 하이퍼 오펜스가 주류',
              '날씨 기반 전략이 강세',
              '트릭룸 전략의 부상',
              '스카프 사용률 증가',
            ],
          ),
          const SizedBox(height: 16),
          _buildAnalysisCard(
            '대응 전략',
            Icons.shield,
            Colors.green,
            [
              '밸런스 팀으로 대응',
              '카운터 포켓몬 활용',
              '아이템 조합 최적화',
              '포켓몬 교체 타이밍',
            ],
          ),
          const SizedBox(height: 16),
          _buildAnalysisCard(
            '예상 변화',
            Icons.psychology,
            Colors.purple,
            [
              '새로운 포켓몬 추가 예정',
              '밸런스 패치 예고',
              '아이템 효과 조정',
              '규칙 변경 가능성',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAnalysisCard(String title, IconData icon, Color color, List<String> items) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.1),
            Colors.white,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(icon, color: Colors.white, size: 24),
                ),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...items.map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          item,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Color _getTierColor(String tier) {
    switch (tier.toLowerCase()) {
      case 'uber':
        return Colors.red;
      case 'ou':
        return Colors.blue;
      case 'uu':
        return Colors.green;
      case 'ru':
        return Colors.orange;
      case 'nu':
        return Colors.purple;
      case 'pu':
        return Colors.brown;
      default:
        return Colors.grey;
    }
  }

  IconData _getItemIcon(String itemName) {
    final lower = itemName.toLowerCase();
    if (lower.contains('scarf')) return Icons.wind_power;
    if (lower.contains('orb')) return Icons.brightness_5;
    if (lower.contains('sash')) return Icons.safety_divider;
    if (lower.contains('leftovers')) return Icons.restaurant;
    if (lower.contains('vest')) return Icons.checkroom;
    if (lower.contains('band')) return Icons.fitness_center;
    if (lower.contains('ball')) return Icons.sports_baseball;
    return Icons.auto_awesome;
  }
}
