import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';

class PokemonApiService {
  static const String baseUrl = 'https://pokeapi.co/api/v2';
  
  static Future<PokemonListResponse> getPokemonList({int offset = 0, int limit = 20}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon?offset=$offset&limit=$limit'),
      );
      
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return PokemonListResponse.fromJson(jsonData);
      } else {
        throw Exception('Failed to load pokemon list: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching pokemon list: $e');
    }
  }
  
  static Future<Pokemon> getPokemon(int id) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon/$id'),
      );
      
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return Pokemon.fromJson(jsonData);
      } else {
        throw Exception('Failed to load pokemon: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching pokemon: $e');
    }
  }
  
  static Future<Pokemon> getPokemonByName(String name) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon/$name'),
      );
      
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return Pokemon.fromJson(jsonData);
      } else {
        throw Exception('Failed to load pokemon: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching pokemon: $e');
    }
  }
  
  static Future<List<Pokemon>> getPokemonListWithDetails({int offset = 0, int limit = 20}) async {
    try {
      final listResponse = await getPokemonList(offset: offset, limit: limit);
      final pokemonList = <Pokemon>[];
      
      for (final item in listResponse.results) {
        try {
          final pokemon = await getPokemon(item.id);
          pokemonList.add(pokemon);
        } catch (e) {
          print('Error loading pokemon ${item.name}: $e');
          // Continue loading other pokemon even if one fails
        }
      }
      
      return pokemonList;
    } catch (e) {
      throw Exception('Error fetching pokemon list with details: $e');
    }
  }
}
