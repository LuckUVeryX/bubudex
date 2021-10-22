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

    final Pokemon pokemon = provider.pokemon;
    final PokeSummary pokeSummary = provider.pokeSummary;

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
            const SizedBox(height: kDetailsVerticalSpacing),
            for (PokeStat stat in pokemon.stats)
              StatsRow(
                color: color,
                stat: formatStat(stat.stat.name),
                value: stat.baseStat,
                effort: stat.effort,
              ),
            const StatsBottomRow(),
            const SizedBox(height: kDetailsVerticalSpacing),
            Text('Type Defenses',
                style: textTheme.bodyText1!.copyWith(color: color)),
            const SizedBox(height: kDetailsVerticalSpacing),
            Text(
                'The effectiveness of each type on ${pokemon.name.capitalize()}'),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 9,
              shrinkWrap: true,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 2,
              children: [
                for (var type in PokeTypes.values)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: WeaknessIcon(pokeTypes: type),
                      ),
                      const SizedBox(height: 2),
                      Text(getTypeDefense(type, pokeSummary.typeDefences)),
                    ],
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StatsBottomRow extends StatelessWidget {
  const StatsBottomRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(child: Text('Total', style: textTheme.bodyText1)),
          Expanded(
            child: Text(
              '318',
              textAlign: TextAlign.right,
              style: textTheme.bodyText1,
            ),
          ),
          const Expanded(child: SizedBox(), flex: 2),
          Expanded(
            child: Text(
              'Effort',
              textAlign: TextAlign.right,
              style: textTheme.bodyText1,
            ),
          ),
        ],
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
    required this.effort,
  }) : super(key: key);

  final Color color;
  final String stat;
  final int value;
  final int effort;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(stat)),
          Expanded(child: Text('$value', textAlign: TextAlign.right)),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: StatsValueBar(color: color, value: value),
            ),
          ),
          Expanded(
            child: Text(
              '$effort',
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
