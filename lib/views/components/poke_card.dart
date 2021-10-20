import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../routes/app_router.dart';
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
      child: Card(
        elevation: 4,
        color: Palette.getBackgroundTypeColor(types.first),
        child: InkWell(
          onTap: () {
            context.pushRoute(
                PokeDetailsRoute(pokeId: pokemon.id, pokemon: pokemon));
          },
          child: Stack(
            alignment: Alignment.topLeft,
            clipBehavior: Clip.none,
            children: [
              Padding(
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
                      style: textTheme.headline6!.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        for (PokeType type in types)
                          PokeTypeChip(pokeType: type),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 12,
                top: -20,
                child: CachedNetworkImage(
                  imageUrl: getImageUrl(pokemon.id),
                  width: size.width / 3,
                  height: size.width / 3,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
