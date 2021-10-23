import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

  final PokeSummary pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    final List<PokeTypes> types =
        pokemon.types.map((e) => pokeTypesFromString(e)).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        elevation: 4,
        color: Palette.getBackgroundTypeColor(types.first),
        child: InkWell(
          onTap: () {
            context.navigateTo(PokeDetailsRoute(pokeId: pokemon.id));
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -14,
                left: 80,
                child: SizedBox(
                  width: size.width / 5,
                  child: Opacity(
                    opacity: 0.2,
                    child: SvgPicture.asset(
                      k6x3Pattern,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
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
                        for (PokeTypes type in types)
                          PokeTypeChip(pokeType: type),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Opacity(
                  opacity: 0.2,
                  child: SvgPicture.asset(
                    kPokeballPattern,
                    color: Colors.white,
                    fit: BoxFit.contain,
                    height: size.width / 3.5,
                    width: size.width / 3.5,
                  ),
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
