import '../../../../core/error/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../models/meta_model.dart';

/// 메타데이터 원격 데이터 소스
abstract class MetaRemoteDataSource {
  Future<List<GameMetaModel>> getGameMetaData();
  Future<List<PokemonMetaModel>> getPokemonRankings(String gameName);
  Future<PokemonMetaModel> getPokemonMeta(int pokemonId, String gameName);
  Future<List<TeamCompositionModel>> getPopularTeamCompositions(String gameName);
  Future<List<ItemUsageModel>> getItemUsageRates(String gameName);
  Future<Map<String, double>> getPokemonMatchups(int pokemonId, String gameName);
}

class MetaRemoteDataSourceImpl implements MetaRemoteDataSource {
  final DioClient dioClient;

  const MetaRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<GameMetaModel>> getGameMetaData() async {
    try {
      // 실제로는 메타데이터 API가 없으므로 모의 데이터를 반환
      return _getMockGameMetaData();
    } catch (e) {
      throw ServerException(message: 'Failed to load meta data: $e');
    }
  }

  @override
  Future<List<PokemonMetaModel>> getPokemonRankings(String gameName) async {
    try {
      return _getMockPokemonRankings(gameName);
    } catch (e) {
      throw ServerException(message: 'Failed to load pokemon rankings: $e');
    }
  }

  @override
  Future<PokemonMetaModel> getPokemonMeta(int pokemonId, String gameName) async {
    try {
      return _getMockPokemonMeta(pokemonId, gameName);
    } catch (e) {
      throw ServerException(message: 'Failed to load pokemon meta: $e');
    }
  }

  @override
  Future<List<TeamCompositionModel>> getPopularTeamCompositions(String gameName) async {
    try {
      return _getMockTeamCompositions(gameName);
    } catch (e) {
      throw ServerException(message: 'Failed to load team compositions: $e');
    }
  }

  @override
  Future<List<ItemUsageModel>> getItemUsageRates(String gameName) async {
    try {
      return _getMockItemUsage(gameName);
    } catch (e) {
      throw ServerException(message: 'Failed to load item usage: $e');
    }
  }

  @override
  Future<Map<String, double>> getPokemonMatchups(int pokemonId, String gameName) async {
    try {
      return _getMockMatchups(pokemonId, gameName);
    } catch (e) {
      throw ServerException(message: 'Failed to load matchups: $e');
    }
  }

  // 모의 데이터 생성 메서드들
  List<GameMetaModel> _getMockGameMetaData() {
    return [
      GameMetaModel(
        gameName: 'Pokémon Scarlet & Violet',
        gameVersion: '1.3.0',
        format: 'VGC 2024',
        topPokemon: _getMockPokemonRankings('Scarlet & Violet'),
        itemUsage: {
          'Choice Scarf': 25,
          'Life Orb': 20,
          'Focus Sash': 18,
          'Leftovers': 15,
          'Assault Vest': 12,
          'Choice Band': 10,
        },
        teamCompositions: {
          'Rain Team': 15,
          'Sun Team': 12,
          'Trick Room': 10,
          'Hyper Offense': 8,
          'Balance': 6,
        },
        lastUpdated: DateTime.now().toIso8601String(),
      ),
      GameMetaModel(
        gameName: 'Pokémon Sword & Shield',
        gameVersion: '1.3.2',
        format: 'VGC 2023',
        topPokemon: _getMockPokemonRankings('Sword & Shield'),
        itemUsage: {
          'Choice Scarf': 22,
          'Life Orb': 18,
          'Focus Sash': 16,
          'Leftovers': 14,
          'Assault Vest': 11,
          'Choice Band': 9,
        },
        teamCompositions: {
          'Dynamax Offense': 18,
          'Trick Room': 12,
          'Weather Control': 10,
          'Hyper Offense': 8,
          'Balance': 7,
        },
        lastUpdated: DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
      ),
    ];
  }

  List<PokemonMetaModel> _getMockPokemonRankings(String gameName) {
    final pokemonData = {
      'Scarlet & Violet': [
        _createPokemonMeta(150, 'Mewtwo', 45.2, 1, 'Uber'),
        _createPokemonMeta(384, 'Rayquaza', 42.8, 2, 'Uber'),
        _createPokemonMeta(248, 'Tyranitar', 38.5, 3, 'OU'),
        _createPokemonMeta(373, 'Salamence', 35.2, 4, 'OU'),
        _createPokemonMeta(6, 'Charizard', 32.8, 5, 'OU'),
        _createPokemonMeta(9, 'Blastoise', 30.5, 6, 'OU'),
        _createPokemonMeta(3, 'Venusaur', 28.9, 7, 'OU'),
        _createPokemonMeta(25, 'Pikachu', 26.7, 8, 'UU'),
        _createPokemonMeta(143, 'Snorlax', 24.3, 9, 'OU'),
        _createPokemonMeta(131, 'Lapras', 22.1, 10, 'UU'),
      ],
      'Sword & Shield': [
        _createPokemonMeta(150, 'Mewtwo', 48.5, 1, 'Uber'),
        _createPokemonMeta(384, 'Rayquaza', 44.2, 2, 'Uber'),
        _createPokemonMeta(248, 'Tyranitar', 40.8, 3, 'OU'),
        _createPokemonMeta(373, 'Salamence', 37.5, 4, 'OU'),
        _createPokemonMeta(6, 'Charizard', 34.9, 5, 'OU'),
        _createPokemonMeta(9, 'Blastoise', 32.1, 6, 'OU'),
        _createPokemonMeta(3, 'Venusaur', 29.8, 7, 'OU'),
        _createPokemonMeta(25, 'Pikachu', 27.4, 8, 'UU'),
        _createPokemonMeta(143, 'Snorlax', 25.2, 9, 'OU'),
        _createPokemonMeta(131, 'Lapras', 23.6, 10, 'UU'),
      ],
    };

    return pokemonData[gameName] ?? [];
  }

  PokemonMetaModel _createPokemonMeta(int id, String name, double usageRate, int rank, String tier) {
    return PokemonMetaModel(
      pokemonId: id,
      pokemonName: name,
      imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png',
      usageRate: usageRate,
      rank: rank,
      commonItems: _getCommonItems(name),
      commonMoves: _getCommonMoves(name),
      commonTeammates: _getCommonTeammates(name),
      tier: tier,
      matchupData: _getMatchupData(name),
    );
  }

  List<String> _getCommonItems(String pokemonName) {
    final itemMap = {
      'Mewtwo': ['Choice Scarf', 'Life Orb', 'Focus Sash'],
      'Rayquaza': ['Choice Band', 'Life Orb', 'Focus Sash'],
      'Tyranitar': ['Choice Scarf', 'Assault Vest', 'Leftovers'],
      'Salamence': ['Choice Scarf', 'Life Orb', 'Focus Sash'],
      'Charizard': ['Choice Scarf', 'Life Orb', 'Focus Sash'],
      'Blastoise': ['Choice Specs', 'Leftovers', 'Assault Vest'],
      'Venusaur': ['Life Orb', 'Choice Specs', 'Leftovers'],
      'Pikachu': ['Light Ball', 'Focus Sash', 'Choice Scarf'],
      'Snorlax': ['Leftovers', 'Choice Band', 'Assault Vest'],
      'Lapras': ['Leftovers', 'Choice Specs', 'Assault Vest'],
    };
    return itemMap[pokemonName] ?? ['Choice Scarf', 'Life Orb'];
  }

  List<String> _getCommonMoves(String pokemonName) {
    final moveMap = {
      'Mewtwo': ['Psychic', 'Aura Sphere', 'Ice Beam', 'Thunderbolt'],
      'Rayquaza': ['Dragon Ascent', 'Earthquake', 'Extreme Speed', 'Dragon Dance'],
      'Tyranitar': ['Stone Edge', 'Crunch', 'Earthquake', 'Ice Beam'],
      'Salamence': ['Dragon Claw', 'Flamethrower', 'Earthquake', 'Dragon Dance'],
      'Charizard': ['Flamethrower', 'Air Slash', 'Solar Beam', 'Dragon Pulse'],
      'Blastoise': ['Hydro Pump', 'Ice Beam', 'Earthquake', 'Protect'],
      'Venusaur': ['Solar Beam', 'Sludge Bomb', 'Earthquake', 'Sleep Powder'],
      'Pikachu': ['Thunderbolt', 'Volt Tackle', 'Iron Tail', 'Quick Attack'],
      'Snorlax': ['Body Slam', 'Earthquake', 'Ice Beam', 'Rest'],
      'Lapras': ['Surf', 'Ice Beam', 'Thunderbolt', 'Perish Song'],
    };
    return moveMap[pokemonName] ?? ['Tackle', 'Growl'];
  }

  List<String> _getCommonTeammates(String pokemonName) {
    final teammateMap = {
      'Mewtwo': ['Rayquaza', 'Tyranitar', 'Salamence'],
      'Rayquaza': ['Mewtwo', 'Tyranitar', 'Charizard'],
      'Tyranitar': ['Mewtwo', 'Rayquaza', 'Salamence'],
      'Salamence': ['Mewtwo', 'Rayquaza', 'Tyranitar'],
      'Charizard': ['Rayquaza', 'Salamence', 'Venusaur'],
      'Blastoise': ['Venusaur', 'Snorlax', 'Lapras'],
      'Venusaur': ['Charizard', 'Blastoise', 'Snorlax'],
      'Pikachu': ['Snorlax', 'Lapras', 'Venusaur'],
      'Snorlax': ['Pikachu', 'Lapras', 'Blastoise'],
      'Lapras': ['Snorlax', 'Pikachu', 'Blastoise'],
    };
    return teammateMap[pokemonName] ?? ['Pikachu', 'Snorlax'];
  }

  Map<String, double> _getMatchupData(String pokemonName) {
    final matchupMap = {
      'Mewtwo': {'Fighting': 0.5, 'Dark': 0.5, 'Ghost': 0.5, 'Psychic': 0.5},
      'Rayquaza': {'Dragon': 0.5, 'Fairy': 2.0, 'Ice': 2.0, 'Rock': 2.0},
      'Tyranitar': {'Fighting': 2.0, 'Ground': 2.0, 'Steel': 0.5, 'Rock': 0.5},
      'Salamence': {'Dragon': 0.5, 'Fairy': 2.0, 'Ice': 2.0, 'Rock': 2.0},
      'Charizard': {'Water': 2.0, 'Rock': 2.0, 'Electric': 2.0, 'Fire': 0.5},
      'Blastoise': {'Electric': 2.0, 'Grass': 2.0, 'Water': 0.5, 'Fire': 0.5},
      'Venusaur': {'Fire': 2.0, 'Ice': 2.0, 'Flying': 2.0, 'Grass': 0.5},
      'Pikachu': {'Ground': 2.0, 'Electric': 0.5, 'Flying': 0.5, 'Steel': 0.5},
      'Snorlax': {'Fighting': 2.0, 'Normal': 0.5, 'Ghost': 0.0, 'Rock': 0.5},
      'Lapras': {'Electric': 2.0, 'Grass': 2.0, 'Fighting': 2.0, 'Water': 0.5},
    };
    return matchupMap[pokemonName] ?? {'Normal': 1.0};
  }

  List<TeamCompositionModel> _getMockTeamCompositions(String gameName) {
    return [
      TeamCompositionModel(
        pokemonIds: [150, 384, 248],
        pokemonNames: ['Mewtwo', 'Rayquaza', 'Tyranitar'],
        winRate: 68.5,
        usageCount: 1250,
        strategy: 'Hyper Offense',
        commonCounters: ['Snorlax', 'Lapras', 'Venusaur'],
      ),
      TeamCompositionModel(
        pokemonIds: [6, 9, 3],
        pokemonNames: ['Charizard', 'Blastoise', 'Venusaur'],
        winRate: 65.2,
        usageCount: 980,
        strategy: 'Weather Control',
        commonCounters: ['Tyranitar', 'Salamence', 'Mewtwo'],
      ),
      TeamCompositionModel(
        pokemonIds: [143, 131, 25],
        pokemonNames: ['Snorlax', 'Lapras', 'Pikachu'],
        winRate: 62.8,
        usageCount: 750,
        strategy: 'Trick Room',
        commonCounters: ['Mewtwo', 'Rayquaza', 'Tyranitar'],
      ),
    ];
  }

  List<ItemUsageModel> _getMockItemUsage(String gameName) {
    return [
      ItemUsageModel(
        itemName: 'Choice Scarf',
        usageRate: 25.5,
        commonUsers: ['Mewtwo', 'Tyranitar', 'Salamence'],
        description: 'Increases Speed by 50% but locks user into one move',
      ),
      ItemUsageModel(
        itemName: 'Life Orb',
        usageRate: 20.3,
        commonUsers: ['Rayquaza', 'Charizard', 'Salamence'],
        description: 'Increases damage by 30% but damages user each turn',
      ),
      ItemUsageModel(
        itemName: 'Focus Sash',
        usageRate: 18.7,
        commonUsers: ['Mewtwo', 'Rayquaza', 'Charizard'],
        description: 'Prevents OHKO, leaving user with 1 HP',
      ),
      ItemUsageModel(
        itemName: 'Leftovers',
        usageRate: 15.2,
        commonUsers: ['Snorlax', 'Lapras', 'Blastoise'],
        description: 'Restores 1/16 of max HP each turn',
      ),
      ItemUsageModel(
        itemName: 'Assault Vest',
        usageRate: 12.8,
        commonUsers: ['Tyranitar', 'Snorlax', 'Blastoise'],
        description: 'Increases Special Defense by 50% but prevents status moves',
      ),
    ];
  }

  PokemonMetaModel _getMockPokemonMeta(int pokemonId, String gameName) {
    final pokemonRankings = _getMockPokemonRankings(gameName);
    return pokemonRankings.firstWhere(
      (p) => p.pokemonId == pokemonId,
      orElse: () => _createPokemonMeta(pokemonId, 'Unknown', 0.0, 999, 'Unknown'),
    );
  }

  Map<String, double> _getMockMatchups(int pokemonId, String gameName) {
    final pokemonRankings = _getMockPokemonRankings(gameName);
    final pokemon = pokemonRankings.firstWhere(
      (p) => p.pokemonId == pokemonId,
      orElse: () => _createPokemonMeta(pokemonId, 'Unknown', 0.0, 999, 'Unknown'),
    );
    return pokemon.matchupData;
  }
}

