import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/models.dart';
import '../../../utils/utils.dart';
import '../../../view_models/view_models.dart';
import '../../components/components.dart';
import '../../theme/theme.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PokeDetailsProvider>(context, listen: false);

    final PokeSpecies pokeSpecies = provider.pokeSpecies;
    final Pokemon pokemon = provider.pokemon;
    final PokeLocationAreas pokeLocationAreas = provider.locationAreas;

    final Color color = Palette.getTypeColor(pokeTypesFromString(
        pokemon.types.firstWhere((type) => type.slot == 1).type.name));

    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Base Stats',
                style: textTheme.bodyText1!.copyWith(color: color)),
            const SizedBox(height: detailsVerticalSpacing),
            StatsRow(color: color, stat: 'HP', value: 45, min: 200, max: 294),
            StatsRow(
                color: color, stat: 'Attack', value: 45, min: 200, max: 294),
            StatsRow(
                color: color, stat: 'Defense', value: 45, min: 200, max: 294),
            StatsRow(
                color: color, stat: 'Sp.Atk', value: 45, min: 200, max: 294),
            StatsRow(
                color: color, stat: 'Sp.Def', value: 45, min: 200, max: 294),
            StatsRow(
                color: color, stat: 'Speed', value: 45, min: 200, max: 294),
            Row(
              children: [
                const Expanded(child: Text('Total'), flex: 2),
                Expanded(
                  child: Text(
                    '318',
                    textAlign: TextAlign.right,
                    style: textTheme.bodyText1,
                  ),
                ),
                const Expanded(child: SizedBox(), flex: 3),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(
                      'Min',
                      textAlign: TextAlign.right,
                      style: textTheme.bodyText1,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(
                      'Max',
                      textAlign: TextAlign.right,
                      style: textTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'The ranges shown on the right are for a level 100 Pokémon. Maximum values are based on a beneficial nature, 252 EVs, 31 IVs; minimum values are based on a hindering nature, 0 EVs, 0 IVs.',
              style: textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}

class StatsRow extends StatelessWidget {
  const StatsRow({
    Key? key,
    required this.color,
    required this.stat,
    required this.value,
    required this.min,
    required this.max,
  }) : super(key: key);

  final Color color;
  final String stat;
  final int value;
  final int min;
  final int max;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(stat), flex: 2),
          Expanded(child: Text('$value', textAlign: TextAlign.right)),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: StatsValueBar(color: color, value: 40),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Text(
                '$min',
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Text(
                '$max',
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
