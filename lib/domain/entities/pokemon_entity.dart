import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_entity.freezed.dart';

/// Pokemon Entity - Core business object
@freezed
class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonTypeEntity> types,
    required String imageUrl,
    required List<PokemonStatEntity> stats,
    required List<PokemonAbilityEntity> abilities,
  }) = _PokemonEntity;

  const PokemonEntity._();

  /// Get primary type
  String get primaryType => types.isNotEmpty ? types.first.name : 'unknown';

  /// Get formatted pokemon number
  String get formattedNumber => '#${id.toString().padLeft(3, '0')}';

  /// Get total base stats
  int get totalStats => stats.fold(0, (sum, stat) => sum + stat.baseStat);
}

@freezed
class PokemonTypeEntity with _$PokemonTypeEntity {
  const factory PokemonTypeEntity({
    required int slot,
    required String name,
    required String url,
  }) = _PokemonTypeEntity;
}

@freezed
class PokemonStatEntity with _$PokemonStatEntity {
  const factory PokemonStatEntity({
    required int baseStat,
    required int effort,
    required String name,
    required String url,
  }) = _PokemonStatEntity;
}

@freezed
class PokemonAbilityEntity with _$PokemonAbilityEntity {
  const factory PokemonAbilityEntity({
    required bool isHidden,
    required int slot,
    required String name,
    required String url,
  }) = _PokemonAbilityEntity;
}

@freezed
class PokemonListEntity with _$PokemonListEntity {
  const factory PokemonListEntity({
    required int count,
    String? next,
    String? previous,
    required List<PokemonListItemEntity> results,
  }) = _PokemonListEntity;
}

@freezed
class PokemonListItemEntity with _$PokemonListItemEntity {
  const factory PokemonListItemEntity({
    required String name,
    required String url,
    required int id,
  }) = _PokemonListItemEntity;
}

