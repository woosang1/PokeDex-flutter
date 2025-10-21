import 'package:flutter/material.dart';
import '../utils/pokemon_filters.dart';
import '../utils/pokemon_utils.dart';

class FilterBottomSheet extends StatefulWidget {
  final PokemonFilterState currentFilter;
  final Function(PokemonFilterState) onFilterChanged;

  const FilterBottomSheet({
    super.key,
    required this.currentFilter,
    required this.onFilterChanged,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  late PokemonGeneration? selectedGeneration;
  late List<String> selectedTypes;

  @override
  void initState() {
    super.initState();
    selectedGeneration = widget.currentFilter.selectedGeneration;
    selectedTypes = List.from(widget.currentFilter.selectedTypes);
  }

  @override
  Widget build(BuildContext context) {
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
                  onPressed: _clearFilters,
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
                  // Generation Filter
                  _buildGenerationFilter(),
                  
                  const SizedBox(height: 30),
                  
                  // Type Filter
                  _buildTypeFilter(),
                  
                  const SizedBox(height: 100), // Space for apply button
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
                onPressed: _applyFilters,
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

  Widget _buildGenerationFilter() {
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
          children: PokemonGeneration.generations.map((generation) {
            final isSelected = selectedGeneration?.id == generation.id;
            return FilterChip(
              label: generation.name,
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  selectedGeneration = selected ? generation : null;
                });
              },
              selectedColor: const Color(0xFF6C5CE7).withOpacity(0.2),
              checkmarkColor: const Color(0xFF6C5CE7),
              labelStyle: TextStyle(
                color: isSelected ? const Color(0xFF6C5CE7) : Colors.grey.shade700,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildTypeFilter() {
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
          children: PokemonTypeFilter.allTypes.map((type) {
            final isSelected = selectedTypes.contains(type);
            return FilterChip(
              label: PokemonTypeFilter.getTypeDisplayName(type),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  if (selected) {
                    selectedTypes.add(type);
                  } else {
                    selectedTypes.remove(type);
                  }
                });
              },
              selectedColor: PokemonTypeColors.getTypeColor(type).withOpacity(0.2),
              checkmarkColor: PokemonTypeColors.getTypeColor(type),
              labelStyle: TextStyle(
                color: isSelected ? PokemonTypeColors.getTypeColor(type) : Colors.grey.shade700,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  void _clearFilters() {
    setState(() {
      selectedGeneration = null;
      selectedTypes.clear();
    });
  }

  void _applyFilters() {
    final newFilter = widget.currentFilter.copyWith(
      selectedGeneration: selectedGeneration,
      selectedTypes: selectedTypes,
      currentPage: 1, // Reset to first page when applying filters
    );
    widget.onFilterChanged(newFilter);
    Navigator.pop(context);
  }
}

class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;
  final bool isLoading;

  const PaginationWidget({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (totalPages <= 1) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Previous button
          IconButton(
            onPressed: currentPage > 1 && !isLoading
                ? () => onPageChanged(currentPage - 1)
                : null,
            icon: const Icon(Icons.chevron_left),
            style: IconButton.styleFrom(
              backgroundColor: currentPage > 1 && !isLoading
                  ? const Color(0xFF6C5CE7)
                  : Colors.grey.shade300,
              foregroundColor: Colors.white,
            ),
          ),
          
          const SizedBox(width: 8),
          
          // Page numbers
          ..._buildPageNumbers(),
          
          const SizedBox(width: 8),
          
          // Next button
          IconButton(
            onPressed: currentPage < totalPages && !isLoading
                ? () => onPageChanged(currentPage + 1)
                : null,
            icon: const Icon(Icons.chevron_right),
            style: IconButton.styleFrom(
              backgroundColor: currentPage < totalPages && !isLoading
                  ? const Color(0xFF6C5CE7)
                  : Colors.grey.shade300,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageNumbers() {
    final List<Widget> pages = [];
    final int maxVisiblePages = 5;
    
    int startPage = (currentPage - maxVisiblePages ~/ 2).clamp(1, totalPages - maxVisiblePages + 1);
    int endPage = (startPage + maxVisiblePages - 1).clamp(1, totalPages);
    
    for (int i = startPage; i <= endPage; i++) {
      pages.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: InkWell(
            onTap: isLoading ? null : () => onPageChanged(i),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: i == currentPage
                    ? const Color(0xFF6C5CE7)
                    : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: i == currentPage
                      ? const Color(0xFF6C5CE7)
                      : Colors.grey.shade300,
                ),
              ),
              child: Center(
                child: Text(
                  i.toString(),
                  style: TextStyle(
                    color: i == currentPage
                        ? Colors.white
                        : Colors.grey.shade700,
                    fontWeight: i == currentPage
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    
    return pages;
  }
}

class FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  final Function(bool) onSelected;
  final Color? selectedColor;
  final Color? checkmarkColor;
  final TextStyle? labelStyle;

  const FilterChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
    this.selectedColor,
    this.checkmarkColor,
    this.labelStyle,
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
              style: labelStyle ?? TextStyle(
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
