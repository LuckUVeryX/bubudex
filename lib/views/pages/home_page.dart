import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../../repository/repository.dart';
import '../../services/services.dart';
import '../../view_models/view_models.dart';
import '../components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _apiService = Provider.of<ApiService>(context, listen: false);
    final _hiveService = Provider.of<HiveService?>(context, listen: false);

    return ChangeNotifierProvider(
      create: (_) =>
          HomeProvider(PokeApiRepository(_apiService, _hiveService!)),
      child: Consumer<HomeProvider>(
        builder: (_, homeProvider, __) {
          switch (homeProvider.status) {
            case HomePageStatus.init:
              debugPrint(HomePageStatus.init.toString());
              homeProvider.getPokemons();

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
            case HomePageStatus.done:
              debugPrint(HomePageStatus.done.toString());
              return _HomePageWithData(pokemons: homeProvider.pokemons);
            case HomePageStatus.error:
              debugPrint(HomePageStatus.error.toString());
              return const Scaffold(
                body: Center(child: Text('Error fetching data')),
              );
          }
        },
      ),
    );
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
