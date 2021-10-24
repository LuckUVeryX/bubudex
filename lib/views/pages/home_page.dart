import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../repository/repository.dart';
import '../../services/services.dart';
import '../../utils/utils.dart';
import '../../view_models/view_models.dart';
import '../components/components.dart';
import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _apiService = Provider.of<ApiService>(context, listen: false);
    final _hiveService = Provider.of<HiveService>(context, listen: false);

    return ChangeNotifierProvider(
      create: (_) =>
          HomeProvider(PokeSummaryRepository(_apiService, _hiveService)),
      child: Consumer<HomeProvider>(
        builder: (_, homeProvider, __) {
          switch (homeProvider.status) {
            case HomePageStatus.init:
              debugPrint(HomePageStatus.init.toString());
              homeProvider.getPokemons();
              return const _HomePageLoading();

            case HomePageStatus.done:
              debugPrint(HomePageStatus.done.toString());
              return ChangeNotifierProvider(
                create: (_) => PokeListProvider(
                  homeProvider.pokemons,
                  homeProvider.pokemons.length,
                  PokeSummaryRepository(_apiService, _hiveService),
                ),
                child: const _HomePageWithData(),
              );

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

class _HomePageLoading extends StatelessWidget {
  const _HomePageLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Loading pokemons for the first time...'),
            SizedBox(height: 20),
            LinearProgressIndicator(color: Palette.kPsychic),
          ],
        ),
      ),
    );
  }
}

class _HomePageWithData extends StatelessWidget {
  const _HomePageWithData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Consumer<SettingsProvider>(builder: (_, provider, __) {
            return IconButton(
              onPressed: () {
                Provider.of<SettingsProvider>(context, listen: false)
                    .toggleDarkTheme();
              },
              icon: Icon(
                provider.isDarkTheme ? Icons.light_mode : Icons.dark_mode,
              ),
            );
          }),
          actions: [
            IconButton(
              onPressed: () {
                _showHomeBottomSheet(context, const GenerationsBottomSheet());
              },
              icon: const Icon(PokeIcons.generation),
            ),
            IconButton(
              onPressed: () {
                _showHomeBottomSheet(context, const SortBottomSheet());
              },
              icon: const Icon(PokeIcons.sort),
            ),
            IconButton(
              onPressed: () {
                _showHomeBottomSheet(context, const FilterBottomSheet());
              },
              icon: const Icon(PokeIcons.filter),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(kPokeballPattern,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).colorScheme.secondary),
            CustomScrollView(
              slivers: [
                const HomeAppBar(),
                Consumer<PokeListProvider>(builder: (_, search, __) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, i) => PokeCard(pokemon: search.pokemons[i]),
                      childCount: search.pokemons.length,
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showHomeBottomSheet(BuildContext context, Widget child) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      builder: (_) {
        final pokeListProvider =
            Provider.of<PokeListProvider>(context, listen: false);
        return ChangeNotifierProvider.value(
          value: pokeListProvider,
          child: child,
        );
      },
    );
  }
}
