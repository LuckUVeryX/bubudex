import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../../../utils/utils.dart';
import '../../components/weakness_icon.dart';
import '../../theme/theme.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  static const columnWidths = <int, TableColumnWidth>{0: FixedColumnWidth(160)};
  static const verticalSpacing = 20.0;

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final headerColor =
        Palette.getTypeColor(pokeTypeFromString(pokemon.types[0]));

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon.description,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 28),
            Text('Pokédex Data',
                style: textTheme.bodyText1!.copyWith(color: headerColor)),
            const SizedBox(height: verticalSpacing),
            _PokedexDataTable(columnWidths: columnWidths, pokemon: pokemon),
            const SizedBox(height: verticalSpacing),
            Text('Training',
                style: textTheme.bodyText1!.copyWith(color: headerColor)),
            const SizedBox(height: verticalSpacing),
            const _TrainingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Breeding',
                style: textTheme.bodyText1!.copyWith(color: headerColor)),
            const SizedBox(height: verticalSpacing),
            const _BreedingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Location',
                style: textTheme.bodyText1!.copyWith(color: headerColor)),
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
    return Table(
      columnWidths: columnWidths,
      children: [
        const TableRow(
          children: [
            Text(
              'Gender',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // TODO: convert to colored text
            Text('M: 87.5%, F: 12.5%'),
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

class _PokedexDataTable extends StatelessWidget {
  const _PokedexDataTable({
    Key? key,
    required this.columnWidths,
    required this.pokemon,
  }) : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Table(
      columnWidths: columnWidths,
      children: [
        const TableRow(
          children: [
            Text(
              'Species',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Seed Pokemon'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Height',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('0.2m'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Weight',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('3.4kg'),
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
              children: [
                for (PokeType type in getTypeWeakness(pokemon.typeDefences))
                  WeaknessIcon(pokeType: type),
              ],
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
