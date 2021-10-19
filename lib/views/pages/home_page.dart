import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../../services/services.dart';
import '../components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _apiService = Provider.of<ApiService>(context, listen: false);
    return FutureBuilder<List<Pokemon>>(
        future: _apiService.getPokemons(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (!snapshot.hasData) {
              return const Scaffold(
                body: Center(child: Text('Error fetching data')),
              );
            } else {
              return _HomePageWithData(pokemons: snapshot.data ?? []);
            }
          } else {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Loading pokemons for the first time...'),
                    SizedBox(height: 20),
                    LinearProgressIndicator(),
                  ],
                ),
              ),
            );
          }
        });
  }
}

class _HomePageWithData extends StatelessWidget {
  const _HomePageWithData({
    Key? key,
    required this.pokemons,
  }) : super(key: key);

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(PokeIcons.generation),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(PokeIcons.sort),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(PokeIcons.filter),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            const HomeAppBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) => PokeCard(pokemon: pokemons[i]),
                childCount: pokemons.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
