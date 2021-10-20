import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../components/weakness_icon.dart';
import '../../theme/theme.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  static const columnWidths = <int, TableColumnWidth>{0: FixedColumnWidth(120)};
  static const verticalSpacing = 20.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger."),
            const SizedBox(height: 28),
            Text('Pokédex Data',
                style: textTheme.bodyText1!.copyWith(color: Palette.kGrass)),
            const SizedBox(height: verticalSpacing),
            const _PokedexDataTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Breeding',
                style: textTheme.bodyText1!.copyWith(color: Palette.kGrass)),
            const SizedBox(height: verticalSpacing),
            const _BreedingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Breeding',
                style: textTheme.bodyText1!.copyWith(color: Palette.kGrass)),
            const SizedBox(height: verticalSpacing),
            const _LocationTable(columnWidths: columnWidths)
          ],
        ),
      ),
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
              'Species',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
            Text('Grass, Monster'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Egg Cycles',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('20 (4,884 - 5,140 steps)'),
          ],
        ),
      ],
    );
  }
}

class _PokedexDataTable extends StatelessWidget {
  const _PokedexDataTable({Key? key, required this.columnWidths})
      : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: columnWidths,
      children: [
        const TableRow(
          children: [
            Text(
              'Species',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Seed Pokémon'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Height',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('0.7m (2′04″)'),
          ],
        ),
        _tableRowSpacing(),
        const TableRow(
          children: [
            Text(
              'Weight',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('6.9kg (15.2 lbs)'),
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
              children: const [
                Text('1. Overgrow'),
                Text('Chlorophyll (hidden ability)'),
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
              children: const [
                WeaknessIcon(pokeType: PokeType.fire),
                WeaknessIcon(pokeType: PokeType.flying),
                WeaknessIcon(pokeType: PokeType.ice),
                WeaknessIcon(pokeType: PokeType.psychic),
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
