import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../utils/utils.dart';
import 'components.dart';

class PokemonSpaceBar extends StatelessWidget {
  const PokemonSpaceBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlexibleSpaceBar(
      title: Text('Bulbasaur',
          style: textTheme.headline6!.copyWith(color: Colors.white)),
      background: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 152,
            child: Opacity(
              opacity: 0.3,
              child: Marquee(text: 'BULBASAUR', style: textTheme.headline1),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: CachedNetworkImage(imageUrl: getImageUrl(1)),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text('#001', style: textTheme.bodyText1),
                      const PokeTypeChip(pokeType: PokeType.grass),
                      const PokeTypeChip(pokeType: PokeType.poison),
                      const Spacer(flex: 2),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
