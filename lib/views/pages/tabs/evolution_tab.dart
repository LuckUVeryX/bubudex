import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/models.dart';
import '../../../utils/utils.dart';
import '../../../view_models/view_models.dart';
import '../../theme/theme.dart';

class EvolutionTab extends StatelessWidget {
  const EvolutionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PokeDetailsProvider>(context, listen: false);

    final Pokemon pokemon = provider.pokemon;
    final List<PokeEvolutionInfo> pokeEvolutionInfo = provider.evoChain;

    final Color color = Palette.getTypeColor(pokeTypesFromString(
        pokemon.types.firstWhere((type) => type.slot == 1).type.name));

    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(kTabsPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Evolution Chart',
              style: textTheme.bodyText1!.copyWith(color: color)),
          for (int i = 0; i < pokeEvolutionInfo.length; i++)
            _PokemonEvoRow(idx: i),
        ],
      ),
    );
  }
}

class _PokemonEvoRow extends StatelessWidget {
  const _PokemonEvoRow({
    Key? key,
    required this.idx,
  }) : super(key: key);

  final int idx;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final provider = Provider.of<PokeDetailsProvider>(context, listen: false);

    final List<PokeEvolutionInfo> pokeEvolutionInfo = provider.evoChain;
    final PokeEvolutionInfo info = pokeEvolutionInfo[idx];

    return idx == 0
        ? const SizedBox()
        : Column(
            children: [
              const SizedBox(height: kDetailsVerticalSpacing),
              Row(
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: getImageUrl(info.id - 1),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_forward, color: Colors.grey[300]),
                        const SizedBox(height: 8),
                        if (info.minLevel != null)
                          Text(
                            '(Level ${info.minLevel})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.item != null)
                          Text(
                            '(Item ${info.item})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.heldItem != null)
                          Text(
                            '(Held item ${info.heldItem})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.knownMove != null)
                          Text(
                            '(Known move ${info.knownMove})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.knownMoveType != null)
                          Text(
                            '(Known move type ${info.knownMoveType})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.location != null)
                          Text(
                            '(Location ${info.location})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.minHappiness != null)
                          Text(
                            '(Min happiness ${info.minHappiness})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.minBeauty != null)
                          Text(
                            '(Min beauty ${info.minBeauty})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.minAffection != null)
                          Text(
                            '(Min affection ${info.minAffection})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.needsOverworldRain)
                          Text(
                            '(Needs overworld rain)',
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.partySpecies != null)
                          Text(
                            '(Party species ${info.partySpecies})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.partyType != null)
                          Text(
                            '(Party type ${info.partyType})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.relativePhysicalStats != null)
                          Text(
                            '(${info.relativePhysicalStats})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.timeOfDay != null)
                          Text(
                            '(Time of day ${info.timeOfDay})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.tradeSpecies != null)
                          Text(
                            '(Trade species ${info.tradeSpecies})'
                                .replaceAll('-', ' ')
                                .capitalizeEvery(),
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                        if (info.turnUpsideDown)
                          Text(
                            '(Needs 3DS turned upside-down)',
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1,
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: getImageUrl(info.id),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '#${pokeIdToString(info.id - 1)}',
                        ),
                        Text(
                          pokeEvolutionInfo[idx - 1].speciesName.capitalize(),
                          style: textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '#${pokeIdToString(info.id)}',
                        ),
                        Text(
                          info.speciesName.capitalize(),
                          style: textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
