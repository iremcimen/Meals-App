import 'package:flutter/material.dart';
import 'package:fifth_app/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  String filterName(String filterName) {
    return filterName[0].toUpperCase() + filterName.substring(1);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters')),

      body: Column(
        children: Filter.values
            .map(
              (filter) => SwitchListTile(
                value: activeFilters[filter]!,
                onChanged: (isChecked) {
                  ref
                      .read(filtersProvider.notifier)
                      .setFilter(filter, isChecked);
                },
                title: Text(filterName(filter.name)),
                subtitle: Text(
                  'Only include ${filterName(filter.name)} meals.',
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
