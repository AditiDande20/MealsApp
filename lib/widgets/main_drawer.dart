import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.primary.withOpacity(0.8),
              ], begin: Alignment.topRight, end: Alignment.bottomRight)),
              child: const Row(
                children: [
                  Icon(
                    Icons.fastfood,
                    size: 48,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'Cooking up ...',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          ListTile(
            title: const Text(
              'Meals',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            leading:
                const Icon(Icons.restaurant, size: 26, color: Colors.white),
            onTap: () {
              onSelectScreen('meals');
            },
          ),
          ListTile(
            title: const Text(
              'Filters',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            leading: const Icon(Icons.settings, size: 26, color: Colors.white),
            onTap: () {
              onSelectScreen('filter');
            },
          )
        ],
      ),
    );
  }
}
