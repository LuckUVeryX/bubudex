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
          const SizedBox(height: kDetailsVerticalSpacing),
          const PokeEvolutionRow(),
          const PokeEvolutionRow2(),
          const SizedBox(height: kDetailsVerticalSpacing),
          const PokeEvolutionRow(),
          const PokeEvolutionRow2(),
        ],
      ),
    );
  }
}

class PokeEvolutionRow2 extends StatelessWidget {
  const PokeEvolutionRow2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const Text('#001'),
              Text('Bulbasaur', style: textTheme.bodyText1),
            ],
          ),
        ),
        const Spacer(),
        Expanded(
          child: Column(
            children: [
              const Text('#002'),
              Text('Ivysaur', style: textTheme.bodyText1),
            ],
          ),
        ),
      ],
    );
  }
}

class PokeEvolutionRow extends StatelessWidget {
  const PokeEvolutionRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CachedNetworkImage(
            imageUrl: getImageUrl(1),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Icon(Icons.arrow_forward, color: Colors.grey[300]),
              const Text('(Level 16)')
            ],
          ),
        ),
        Expanded(
          child: CachedNetworkImage(
            imageUrl: getImageUrl(2),
          ),
        ),
      ],
    );
  }
}
