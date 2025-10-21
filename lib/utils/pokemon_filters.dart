class PokemonGeneration {
  final int id;
  final String name;
  final int startId;
  final int endId;
  final String description;

  const PokemonGeneration({
    required this.id,
    required this.name,
    required this.startId,
    required this.endId,
    required this.description,
  });

  static const List<PokemonGeneration> generations = [
    PokemonGeneration(
      id: 1,
      name: '1세대',
      startId: 1,
      endId: 151,
      description: '레드/그린/블루',
    ),
    PokemonGeneration(
      id: 2,
      name: '2세대',
      startId: 152,
      endId: 251,
      description: '골드/실버',
    ),
    PokemonGeneration(
      id: 3,
      name: '3세대',
      startId: 252,
      endId: 386,
      description: '루비/사파이어',
    ),
    PokemonGeneration(
      id: 4,
      name: '4세대',
      startId: 387,
      endId: 493,
      description: '다이아몬드/펄',
    ),
    PokemonGeneration(
      id: 5,
      name: '5세대',
      startId: 494,
      endId: 649,
      description: '블랙/화이트',
    ),
    PokemonGeneration(
      id: 6,
      name: '6세대',
      startId: 650,
      endId: 721,
      description: 'X/Y',
    ),
    PokemonGeneration(
      id: 7,
      name: '7세대',
      startId: 722,
      endId: 809,
      description: '썬/문',
    ),
    PokemonGeneration(
      id: 8,
      name: '8세대',
      startId: 810,
      endId: 905,
      description: '소드/실드',
    ),
    PokemonGeneration(
      id: 9,
      name: '9세대',
      startId: 906,
      endId: 1025,
      description: '스칼렛/바이올렛',
    ),
  ];

  static PokemonGeneration? getGenerationById(int id) {
    try {
      return generations.firstWhere((gen) => id >= gen.startId && id <= gen.endId);
    } catch (e) {
      return null;
    }
  }

  static PokemonGeneration? getGenerationByName(String name) {
    try {
      return generations.firstWhere((gen) => gen.name == name);
    } catch (e) {
      return null;
    }
  }
}

class PokemonFilterState {
  final PokemonGeneration? selectedGeneration;
  final List<String> selectedTypes;
  final int currentPage;
  final int itemsPerPage;

  const PokemonFilterState({
    this.selectedGeneration,
    this.selectedTypes = const [],
    this.currentPage = 1,
    this.itemsPerPage = 20,
  });

  PokemonFilterState copyWith({
    PokemonGeneration? selectedGeneration,
    List<String>? selectedTypes,
    int? currentPage,
    int? itemsPerPage,
  }) {
    return PokemonFilterState(
      selectedGeneration: selectedGeneration ?? this.selectedGeneration,
      selectedTypes: selectedTypes ?? this.selectedTypes,
      currentPage: currentPage ?? this.currentPage,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
    );
  }

  bool get hasActiveFilters => 
      selectedGeneration != null || selectedTypes.isNotEmpty;

  PokemonFilterState clearFilters() {
    return const PokemonFilterState();
  }
}

class PokemonTypeFilter {
  static const List<String> allTypes = [
    'normal',
    'fire',
    'water',
    'electric',
    'grass',
    'ice',
    'fighting',
    'poison',
    'ground',
    'flying',
    'psychic',
    'bug',
    'rock',
    'ghost',
    'dragon',
    'dark',
    'steel',
    'fairy',
  ];

  static String getTypeDisplayName(String type) {
    switch (type) {
      case 'normal': return '노말';
      case 'fire': return '불꽃';
      case 'water': return '물';
      case 'electric': return '전기';
      case 'grass': return '풀';
      case 'ice': return '얼음';
      case 'fighting': return '격투';
      case 'poison': return '독';
      case 'ground': return '땅';
      case 'flying': return '비행';
      case 'psychic': return '에스퍼';
      case 'bug': return '벌레';
      case 'rock': return '바위';
      case 'ghost': return '고스트';
      case 'dragon': return '드래곤';
      case 'dark': return '악';
      case 'steel': return '강철';
      case 'fairy': return '페어리';
      default: return type.toUpperCase();
    }
  }
}
