import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final height = kToolbarHeight + 124;

    return SliverAppBar(
      floating: true,
      collapsedHeight: height,
      expandedHeight: height,
      flexibleSpace: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pokédex', style: textTheme.headline6),
          const SizedBox(height: 8),
          const Text(
            'Search for Pokémon by name or using the National Pokédex number.',
          ),
          const SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              prefixIcon: const Icon(Icons.search),
              hintText: 'What Pokémon are you looking for?',
              hintStyle: textTheme.bodyText2,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
