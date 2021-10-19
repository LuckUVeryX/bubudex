import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';
import '../theme/theme.dart';
import 'components.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    final List<PokeType> types =
        pokemon.types.map((e) => pokeTypeFromString(e)).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        alignment: Alignment.topLeft,
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 4,
            color: Palette.getBackgroundTypeColor(types.first),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '#${pokeIdToString(pokemon.id)}',
                    style: textTheme.subtitle1!
                        .copyWith(color: Palette.kTextNumber),
                  ),
                  Text(
                    pokemon.name.capitalize(),
                    style: textTheme.headline6!.copyWith(color: Palette.kWhite),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      for (PokeType type in types) PokeTypeChip(pokeType: type),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: -20,
            child: CachedNetworkImage(
              imageUrl:
                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/${pokeIdToString(pokemon.id)}.png',
              width: size.width / 3,
              height: size.width / 3,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
