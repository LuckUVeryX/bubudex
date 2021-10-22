import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import 'components.dart';

class PokemonSpaceBar extends StatelessWidget {
  const PokemonSpaceBar({
    required this.pokemon,
    Key? key,
  }) : super(key: key);

  final PokeSummary pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FlexibleSpaceBar(
      title: Text(pokemon.name.capitalize(),
          style: textTheme.headline6!.copyWith(color: Colors.white)),
      background: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: 152,
            child: Opacity(
              opacity: 0.3,
              child: Marquee(
                  text: pokemon.name.toUpperCase(), style: textTheme.headline1),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: CachedNetworkImage(imageUrl: getImageUrl(pokemon.id)),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text('#${pokeIdToString(pokemon.id)}',
                          style: textTheme.bodyText1),
                      for (String pokeType in pokemon.types)
                        PokeTypeChip(pokeType: pokeTypesFromString(pokeType)),
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
