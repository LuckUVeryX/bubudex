import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../../repository/repository.dart';
import '../../services/services.dart';
import '../../utils/utils.dart';
import '../../view_models/poke_details_provider.dart';
import '../components/components.dart';
import '../theme/theme.dart';
import 'pages.dart';

class PokeDetailsPage extends StatelessWidget {
  const PokeDetailsPage({
    Key? key,
    @PathParam('pokeId') required this.pokeId,
  }) : super(key: key);

  final int pokeId;
  @override
  Widget build(BuildContext context) {
    final _apiService = Provider.of<ApiService>(context, listen: false);
    final _hiveService = Provider.of<HiveService>(context, listen: false);

    final PokeSummary pokemon = _hiveService.getPokeSummary(pokeId);
    final backgroundColor =
        Palette.getBackgroundTypeColor(pokeTypesFromString(pokemon.types[0]));

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          physics: const ClampingScrollPhysics(),
          headerSliverBuilder: (_, __) {
            return [
              SliverAppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                pinned: true,
                collapsedHeight: kToolbarHeight,
                expandedHeight: 200,
                backgroundColor: backgroundColor,
                flexibleSpace: SafeArea(
                    child: PokemonSpaceBar(pokemon: pokemon), bottom: true),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  backgroundColor: backgroundColor,
                  bottom: const TabBar(
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(),
                    tabs: [
                      Tab(text: 'About'),
                      Tab(text: 'Stats'),
                      Tab(text: 'Evolution'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: ChangeNotifierProvider(
            create: (_) => PokeDetailsProvider(
              PokeDetailsRepository(_apiService, _hiveService),
              pokeId,
            ),
            child: Consumer<PokeDetailsProvider>(builder: (_, value, __) {
              switch (value.status) {
                case PokeDetailsStatus.init:
                  value.init();
                  return Center(
                    child: CircularProgressIndicator(color: backgroundColor),
                  );

                case PokeDetailsStatus.error:
                  return const Center(child: Text('Error'));

                case PokeDetailsStatus.done:
                  return const TabBarView(
                    physics: ClampingScrollPhysics(),
                    children: [AboutTab(), StatsTab(), EvolutionTab()],
                  );
              }
            }),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({required this.backgroundColor, required this.bottom});
  final TabBar bottom;
  final Color backgroundColor;

  @override
  double get minExtent => bottom.preferredSize.height;
  @override
  double get maxExtent => bottom.preferredSize.height;

  @override
  Widget build(BuildContext context, double _, bool __) {
    return Container(
      child: bottom,
      color: backgroundColor,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
