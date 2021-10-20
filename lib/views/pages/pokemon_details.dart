import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../utils/utils.dart';
import '../components/components.dart';
import '../theme/theme.dart';

class PokeDetailsPage extends StatelessWidget {
  const PokeDetailsPage({
    Key? key,
    @PathParam('pokeId') required this.pokeId,
  }) : super(key: key);

  final int pokeId;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                iconTheme: const IconThemeData(color: Colors.white),
                pinned: true,
                collapsedHeight: kToolbarHeight,
                expandedHeight: 200,
                backgroundColor: Palette.kBackgroundGrass,
                flexibleSpace: SafeArea(
                  child: FlexibleSpaceBar(
                    title: Text('Bulbasaur',
                        style:
                            textTheme.headline6!.copyWith(color: Colors.white)),
                    background: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          height: 152,
                          child: Opacity(
                            opacity: 0.3,
                            child: Marquee(
                                text: 'BULBASAUR', style: textTheme.headline1),
                          ),
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: CachedNetworkImage(
                                    imageUrl: getImageUrl(1)),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Text('#001', style: textTheme.bodyText1),
                                    const PokeTypeChip(
                                        pokeType: PokeType.grass),
                                    const PokeTypeChip(
                                        pokeType: PokeType.poison),
                                    const Spacer(flex: 2),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ];
          },
          body: Center(child: Text('Text')),
        ),
      ),
    );
  }
}
