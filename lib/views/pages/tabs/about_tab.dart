import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/models.dart';
import '../../../utils/utils.dart';
import '../../../view_models/view_models.dart';
import '../../components/weakness_icon.dart';
import '../../theme/theme.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({
    Key? key,
    required this.pokemon,
    required this.pokeId,
  }) : super(key: key);

  final PokeSummary pokemon;
  final int pokeId;

  static const columnWidths = <int, TableColumnWidth>{0: FixedColumnWidth(160)};
  static const verticalSpacing = 20.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final backgroundColor = Palette.kGrass;

    final pokeSpecies =
        Provider.of<PokeDetailsProvider>(context, listen: false).pokeSpecies;

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokeSpecies.flavorTextEntries
                  .firstWhere((flavorText) => flavorText.language.name == 'en',
                      orElse: () => FlavorText(
                            flavorText: '',
                            language: NamedApiResource(name: '', url: ''),
                            version: NamedApiResource(name: '', url: ''),
                          ))
                  .flavorText
                  .replaceAll('\n', ' ')
                  .replaceAll('\f', ' '),
              // pokeSpecies.flavorTextEntries[0].flavorText
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 28),
            Text('Pokédex Data',
                style: textTheme.bodyText1!.copyWith(color: backgroundColor)),
            const SizedBox(height: verticalSpacing),
            const _PokeDexDataTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Training',
                style: textTheme.bodyText1!.copyWith(color: backgroundColor)),
            const SizedBox(height: verticalSpacing),
            const _TrainingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Breeding',
                style: textTheme.bodyText1!.copyWith(color: backgroundColor)),
            const SizedBox(height: verticalSpacing),
            const _BreedingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Location',
                style: textTheme.bodyText1!.copyWith(color: backgroundColor)),
            const SizedBox(height: verticalSpacing),
            const _LocationTable(columnWidths: columnWidths)
          ],
        ),
      ),
    );
  }
}

class _TrainingTable extends StatelessWidget {
  const _TrainingTable({
    Key? key,
    required this.columnWidths,
  }) : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: columnWidths,
      children: [
        const TableRow(
          children: [
            Text(
              'EV Yield',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('1 Special Attack'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Base Friendship',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('70 (normal)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Base Exp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('64'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Growth Rate',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Medium Slow'),
          ],
        ),
        _tableRowSpacing(),
      ],
    );
  }
}

class _LocationTable extends StatelessWidget {
  const _LocationTable({
    Key? key,
    required this.columnWidths,
  }) : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: columnWidths,
      children: [
        const TableRow(
          children: [
            Text(
              '001',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('(Red/Blue/Yellow)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              '226',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('(Gold/Silver/Crystal)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              '001',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('(FireRed/LeafGreen)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              '231',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('(HeartGold/SoulSilver)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              '080',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('(X/Y - Central Kalos)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              '001',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("(Let's Go Pikachu/Let's Go Eevee)"),
          ],
        ),
        _tableRowSpacing(),
      ],
    );
  }
}

class _BreedingTable extends StatelessWidget {
  const _BreedingTable({
    Key? key,
    required this.columnWidths,
  }) : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final pokeSpecies =
        Provider.of<PokeDetailsProvider>(context, listen: false).pokeSpecies;
    return Table(
      columnWidths: columnWidths,
      children: [
        TableRow(
          children: [
            const Text(
              'Gender',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            pokeSpecies.genderRate == -1
                ? const Text('Undefined')
                : RichText(
                    text: TextSpan(
                      style: textTheme.bodyText2,
                      children: [
                        TextSpan(
                          text: 'M: ${(1 - pokeSpecies.genderRate / 8) * 100}%',
                          style: const TextStyle(color: Palette.kFlying),
                        ),
                        const TextSpan(text: ', '),
                        TextSpan(
                          text: 'F: ${pokeSpecies.genderRate / 8 * 100}%',
                          style: const TextStyle(color: Palette.kFairy),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Egg Groups',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Grass Monster'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Egg Cycles',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('20 (4,884-5140 steps'),
          ],
        ),
      ],
    );
  }
}

class _PokeDexDataTable extends StatelessWidget {
  const _PokeDexDataTable({
    Key? key,
    required this.columnWidths,
  }) : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final pokeSpecies =
        Provider.of<PokeDetailsProvider>(context, listen: false).pokeSpecies;
    return Table(
      columnWidths: columnWidths,
      children: [
        TableRow(
          children: [
            const Text(
              'Species',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pokeSpecies.genera
                  .firstWhere((genus) => genus.language.name == 'en')
                  .genus,
            ),
          ],
        ),
        pokeSpecies.isBaby ? _tableRowSpacing() : _emptyTableRow(),
        pokeSpecies.isBaby
            ? const TableRow(
                children: [
                  Text(
                    'Baby',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('True'),
                ],
              )
            : _emptyTableRow(),
        pokeSpecies.isLegendary ? _tableRowSpacing() : _emptyTableRow(),
        pokeSpecies.isLegendary
            ? const TableRow(
                children: [
                  Text(
                    'Legendary',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('True'),
                ],
              )
            : _emptyTableRow(),
        pokeSpecies.isMythical ? _tableRowSpacing() : _emptyTableRow(),
        pokeSpecies.isMythical
            ? const TableRow(
                children: [
                  Text(
                    'Mythical',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('True'),
                ],
              )
            : _emptyTableRow(),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Base Happiness',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(pokeSpecies.baseHappiness.toString()),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Height',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('1. Shed-skin'),
                Text('Overcoat (hidden)', style: textTheme.subtitle2),
              ],
            ),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Weight',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('1. Shed-skin'),
                Text('Overcoat (hidden)', style: textTheme.subtitle2),
              ],
            ),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Abilities',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('1. Shed-skin'),
                Text('Overcoat (hidden)', style: textTheme.subtitle2),
              ],
            ),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Weaknesses',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [WeaknessIcon(pokeType: PokeTypes.fire)],
            ),
          ],
        ),
      ],
    );
  }
}

TableRow _tableRowSpacing() {
  return const TableRow(
    children: [SizedBox(height: 12), SizedBox(height: 12)],
  );
}

TableRow _emptyTableRow() {
  return const TableRow(
    children: [SizedBox(), SizedBox()],
  );
}
