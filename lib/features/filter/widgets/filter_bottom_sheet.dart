import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_constants.dart';
import '../../../domain/entities/filter_entity.dart';
import '../providers/filter_provider.dart';

class FilterBottomSheet extends ConsumerWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(filterProvider);
    
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '필터',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextButton(
                  onPressed: () => ref.read(filterProvider.notifier).clearFilters(),
                  child: const Text('초기화'),
                ),
              ],
            ),
          ),

          // Filter content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGenerationFilter(context, ref, filter),
                  const SizedBox(height: 30),
                  _buildTypeFilter(context, ref, filter),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),

          // Apply button
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6C5CE7),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  '필터 적용',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGenerationFilter(
    BuildContext context,
    WidgetRef ref,
    FilterEntity filter,
  ) {
    final generations = _getGenerations();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '세대별 필터',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: generations.map((generation) {
            final isSelected =
                filter.selectedGeneration?.id == generation.id;
            return _FilterChip(
              label: generation.name,
              selected: isSelected,
              onSelected: (selected) {
                ref
                    .read(filterProvider.notifier)
                    .setGeneration(selected ? generation : null);
              },
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildTypeFilter(
    BuildContext context,
    WidgetRef ref,
    FilterEntity filter,
  ) {
    final types = PokemonTypeConstants.typeColors.keys.toList();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '타입별 필터',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: types.map((type) {
            final isSelected = filter.selectedTypes.contains(type);
            final typeColor = Color(PokemonTypeConstants.typeColors[type]!);
            
            return _FilterChip(
              label: PokemonTypeConstants.typeDisplayNames[type] ?? type,
              selected: isSelected,
              onSelected: (selected) {
                ref.read(filterProvider.notifier).toggleType(type);
              },
              selectedColor: typeColor.withOpacity(0.2),
              checkmarkColor: typeColor,
            );
          }).toList(),
        ),
      ],
    );
  }

  List<GenerationEntity> _getGenerations() {
    return PokemonGenerationConstants.generations.map((gen) {
      return GenerationEntity(
        id: gen['id'] as int,
        name: gen['name'] as String,
        startId: gen['startId'] as int,
        endId: gen['endId'] as int,
        region: gen['region'] as String,
      );
    }).toList();
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  final Function(bool) onSelected;
  final Color? selectedColor;
  final Color? checkmarkColor;

  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onSelected,
    this.selectedColor,
    this.checkmarkColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelected(!selected),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: selected
              ? (selectedColor ?? const Color(0xFF6C5CE7).withOpacity(0.2))
              : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: selected
                ? (checkmarkColor ?? const Color(0xFF6C5CE7))
                : Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (selected)
              Icon(
                Icons.check,
                size: 16,
                color: checkmarkColor ?? const Color(0xFF6C5CE7),
              ),
            if (selected) const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                color: selected
                    ? (checkmarkColor ?? const Color(0xFF6C5CE7))
                    : Colors.grey.shade700,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

