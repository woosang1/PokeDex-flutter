/// Application-wide constants
class AppConstants {
  // API
  static const String apiBaseUrl = 'https://pokeapi.co/api/v2';
  static const int pokemonPerPage = 20;
  static const int maxStatValue = 255;
  
  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
  
  // Placeholders
  static const String placeholderImageUrl = 
      'https://via.placeholder.com/200x200?text=No+Image';
  
  // App Info
  static const String appName = 'Pokédex';
  static const String appVersion = '2.0.0';
}

/// Pokemon type colors
class PokemonTypeConstants {
  static const typeColors = {
    'fire': 0xFFFF5733,
    'water': 0xFF3498DB,
    'grass': 0xFF2ECC71,
    'electric': 0xFFF1C40F,
    'psychic': 0xFF9B59B6,
    'ice': 0xFF5DADE2,
    'dragon': 0xFF3F51B5,
    'dark': 0xFF5D4037,
    'fairy': 0xFFEC407A,
    'fighting': 0xFFFF6F00,
    'flying': 0xFF81D4FA,
    'poison': 0xFF7E57C2,
    'ground': 0xFF8D6E63,
    'rock': 0xFF78909C,
    'bug': 0xFF9CCC65,
    'ghost': 0xFF7E57C2,
    'steel': 0xFF90A4AE,
    'normal': 0xFF9E9E9E,
  };

  static const typeDisplayNames = {
    'normal': '노말',
    'fire': '불꽃',
    'water': '물',
    'electric': '전기',
    'grass': '풀',
    'ice': '얼음',
    'fighting': '격투',
    'poison': '독',
    'ground': '땅',
    'flying': '비행',
    'psychic': '에스퍼',
    'bug': '벌레',
    'rock': '바위',
    'ghost': '고스트',
    'dragon': '드래곤',
    'dark': '악',
    'steel': '강철',
    'fairy': '페어리',
  };

  static const statDisplayNames = {
    'hp': 'HP',
    'attack': '공격',
    'defense': '방어',
    'special-attack': '특수공격',
    'special-defense': '특수방어',
    'speed': '속도',
  };
}

/// Pokemon generation data
class PokemonGenerationConstants {
  static const generations = [
    {'id': 1, 'name': '1세대', 'startId': 1, 'endId': 151, 'region': '관동'},
    {'id': 2, 'name': '2세대', 'startId': 152, 'endId': 251, 'region': '성도'},
    {'id': 3, 'name': '3세대', 'startId': 252, 'endId': 386, 'region': '호연'},
    {'id': 4, 'name': '4세대', 'startId': 387, 'endId': 493, 'region': '신오'},
    {'id': 5, 'name': '5세대', 'startId': 494, 'endId': 649, 'region': '하나'},
    {'id': 6, 'name': '6세대', 'startId': 650, 'endId': 721, 'region': '칼로스'},
    {'id': 7, 'name': '7세대', 'startId': 722, 'endId': 809, 'region': '알로라'},
    {'id': 8, 'name': '8세대', 'startId': 810, 'endId': 905, 'region': '가라르'},
    {'id': 9, 'name': '9세대', 'startId': 906, 'endId': 1025, 'region': '팔데아'},
  ];
}

