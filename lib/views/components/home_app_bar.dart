import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/view_models.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = kToolbarHeight + 100;
    final textTheme = Theme.of(context).textTheme;
    final searchProvider =
        Provider.of<PokeListProvider>(context, listen: false);

    return SliverAppBar(
      floating: true,
      collapsedHeight: height,
      expandedHeight: height,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pokédex', style: textTheme.headline5),
            const SizedBox(height: 8),
            const Text(
              'Search for Pokémon by name or using the National Pokédex number.',
            ),
            const SizedBox(height: 12),
            TextField(
              controller: searchProvider.searchController,
              onChanged: (_) {
                searchProvider.searchPokemons();
              },
              textCapitalization: TextCapitalization.words,
              style: textTheme.bodyText2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                prefixIcon: const Icon(Icons.search),
                hintText: 'What Pokémon are you looking for?',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
