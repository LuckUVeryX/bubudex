import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                const SliverAppBar(
                  iconTheme: IconThemeData(color: Colors.white),
                  pinned: true,
                  collapsedHeight: kToolbarHeight,
                  expandedHeight: 200,
                  backgroundColor: Palette.kBackgroundGrass,
                  flexibleSpace:
                      SafeArea(child: PokemonSpaceBar(), bottom: true),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    backgroundColor: Palette.kBackgroundGrass,
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
                )
              ];
            },
            body: const TabBarView(
              children: [
                AboutTab(),
                Center(child: Text('Stats')),
                Center(child: Text('Evolution')),
              ],
            )),
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
