import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_entity.freezed.dart';

/// Filter state entity
@freezed
class FilterEntity with _$FilterEntity {
  const factory FilterEntity({
    GenerationEntity? selectedGeneration,
    @Default([]) List<String> selectedTypes,
    @Default(1) int currentPage,
    @Default(20) int itemsPerPage,
  }) = _FilterEntity;

  const FilterEntity._();

  /// Check if any filters are active
  bool get hasActiveFilters =>
      selectedGeneration != null || selectedTypes.isNotEmpty;

  /// Clear all filters
  FilterEntity clearFilters() => const FilterEntity();
}

@freezed
class GenerationEntity with _$GenerationEntity {
  const factory GenerationEntity({
    required int id,
    required String name,
    required int startId,
    required int endId,
    required String region,
  }) = _GenerationEntity;
}

