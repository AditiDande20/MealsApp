import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/filter_provider.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilter = ref.watch(filterProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Filters',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilter[Filter.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: const Text(
              'Gluten-free',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            subtitle: const Text(
              'Only include gluten-free meals.',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Colors.purple,
          ),
          SwitchListTile(
            value: activeFilter[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: const Text(
              'Lactose-free',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            subtitle: const Text(
              'Only include lactose-free meals.',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Colors.purple,
          ),
          SwitchListTile(
            value: activeFilter[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: const Text(
              'Vegetarian',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            subtitle: const Text(
              'Only include vegetarian meals.',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Colors.purple,
          ),
          SwitchListTile(
            value: activeFilter[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: const Text(
              'Vegan',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            subtitle: const Text(
              'Only include vegan meals.',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Colors.purple,
          )
        ],
      ),
    );
  }
}
