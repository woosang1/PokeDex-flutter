import 'package:flutter/material.dart';

class PokemonTypeColors {
  static const Map<String, Color> _typeColors = {
    'fire': Colors.red,
    'water': Colors.blue,
    'grass': Colors.green,
    'electric': Colors.yellow,
    'psychic': Colors.purple,
    'ice': Colors.cyan,
    'dragon': Colors.indigo,
    'dark': Colors.brown,
    'fairy': Colors.pink,
    'fighting': Colors.orange,
    'flying': Colors.lightBlue,
    'poison': Colors.deepPurple,
    'ground': Colors.brown,
    'rock': Colors.grey,
    'bug': Colors.lightGreen,
    'ghost': Colors.deepPurple,
    'steel': Colors.grey,
    'normal': Colors.grey,
  };

  static Color getTypeColor(String type) {
    return _typeColors[type.toLowerCase()] ?? Colors.grey;
  }

  static Color getTypeColorWithOpacity(String type, double opacity) {
    return getTypeColor(type).withOpacity(opacity);
  }
}

class PokemonConstants {
  static const int maxStatValue = 255;
  static const int pokemonPerPage = 20;
  static const String placeholderImageUrl = 'https://via.placeholder.com/200x200?text=No+Image';
  static const String pokemonApiBaseUrl = 'https://pokeapi.co/api/v2';
}

class PokemonUtils {
  static String formatPokemonNumber(int id) {
    return '#${id.toString().padLeft(3, '0')}';
  }

  static String formatHeight(int height) {
    return '${height / 10}m';
  }

  static String formatWeight(int weight) {
    return '${weight / 10}kg';
  }

  static String formatStatName(String statName) {
    switch (statName.toLowerCase()) {
      case 'hp':
        return 'HP';
      case 'attack':
        return '공격';
      case 'defense':
        return '방어';
      case 'special-attack':
        return '특수공격';
      case 'special-defense':
        return '특수방어';
      case 'speed':
        return '속도';
      default:
        return statName;
    }
  }

  static String capitalizeFirst(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }
}
