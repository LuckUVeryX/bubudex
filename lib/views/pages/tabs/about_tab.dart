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
    required this.pokeId,
  }) : super(key: key);

  final int pokeId;

  static const columnWidths = {0: FixedColumnWidth(160)};
  static const verticalSpacing = 20.0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PokeDetailsProvider>(context, listen: false);

    final PokeSpecies pokeSpecies = provider.pokeSpecies;
    final Pokemon pokemon = provider.pokemon;
    final List<PokeLocationArea> pokeLocationAreas = provider.locationAreas;

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
                style: textTheme.bodyText1!.copyWith(color: color)),
            const SizedBox(height: verticalSpacing),
            const _PokeDexDataTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Training',
                style: textTheme.bodyText1!.copyWith(color: color)),
            const SizedBox(height: verticalSpacing),
            const _TrainingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            Text('Breeding',
                style: textTheme.bodyText1!.copyWith(color: color)),
            const SizedBox(height: verticalSpacing),
            const _BreedingTable(columnWidths: columnWidths),
            const SizedBox(height: verticalSpacing),
            pokeLocationAreas.isNotEmpty
                ? Text('Location',
                    style: textTheme.bodyText1!.copyWith(color: color))
                : const SizedBox(),
            pokeLocationAreas.isNotEmpty
                ? const SizedBox(height: verticalSpacing)
                : const SizedBox(),
            pokeLocationAreas.isNotEmpty
                ? const _LocationTable(columnWidths: columnWidths)
                : const SizedBox(),
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
    final provider = Provider.of<PokeDetailsProvider>(context, listen: false);
    final pokemon = provider.pokemon;
    final pokeSpecies = provider.pokeSpecies;

    final textTheme = Theme.of(context).textTheme;

    return Table(
      columnWidths: columnWidths,
      children: [
        TableRow(
          children: [
            const Text(
              'EV Yield',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (PokeStat stat
                    in pokemon.stats.where((stat) => stat.effort >= 1))
                  Text(
                      '${stat.effort} ${stat.stat.name.replaceAll('-', ' ').capitalizeEvery()}'),
              ],
            ),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Catch Rate',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${pokeSpecies.captureRate}'),
                Text(
                  '(${(pokeSpecies.captureRate / 765 * 100).toStringAsFixed(1)}% with PokéBall, full HP)',
                  style: textTheme.subtitle2,
                )
              ],
            ),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Base Friendship',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
                '${pokeSpecies.baseHappiness} (${getFriendshipTier(pokeSpecies.baseHappiness)})'),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Base Exp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(pokemon.baseExperience.toString()),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Growth Rate',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(pokeSpecies.growthRate.name
                .replaceAll('-', ' ')
                .capitalizeEvery()),
            // Text('Medium Slow'),
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
    final List<PokeLocationArea> areas =
        Provider.of<PokeDetailsProvider>(context, listen: false).locationAreas;

    return Table(
      columnWidths: columnWidths,
      children: getLocations(areas),
    );
  }

  List<TableRow> getLocations(List<PokeLocationArea> areas) {
    List<TableRow> ls = [];
    for (PokeLocationArea area in areas) {
      ls.add(TableRow(children: [
        Text(area.locationArea.name.replaceAll('-', ' ').capitalizeEvery(),
            style: const TextStyle(fontWeight: FontWeight.bold)),
        Text('(${area.versionDetails[0].version.name.capitalize()})'),
      ]));
      ls.add(_tableRowSpacing());
    }
    return ls;
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
    List<String> eggGroups = [];
    for (NamedApiResource eggGroup in pokeSpecies.eggGroups) {
      eggGroups.add(eggGroup.name.capitalize());
    }
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
        TableRow(
          children: [
            const Text(
              'Egg Groups',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(eggGroups.isNotEmpty ? eggGroups.join(', ') : 'None'),
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Egg Cycles',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            RichText(
              text: TextSpan(
                style: textTheme.bodyText2,
                children: [
                  TextSpan(text: '${pokeSpecies.hatchCounter} '),
                  TextSpan(
                    text: '(${255 * (pokeSpecies.hatchCounter + 1)} steps)',
                    style: textTheme.subtitle2,
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

class _PokeDexDataTable extends StatelessWidget {
  const _PokeDexDataTable({
    Key? key,
    required this.columnWidths,
  }) : super(key: key);

  final Map<int, TableColumnWidth> columnWidths;

  @override
  Widget build(BuildContext context) {
    final Pokemon pokemon =
        Provider.of<PokeDetailsProvider>(context, listen: false).pokemon;
    final textTheme = Theme.of(context).textTheme;
    final provider = Provider.of<PokeDetailsProvider>(context, listen: false);
    final pokeSpecies = provider.pokeSpecies;
    final pokeSummary = provider.pokeSummary;
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
              'Height',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('${pokemon.height / 10}m')
          ],
        ),
        _tableRowSpacing(),
        TableRow(
          children: [
            const Text(
              'Weight',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('${pokemon.weight / 10}kg')
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
                for (PokeAbility ability in pokemon.abilities)
                  ability.isHidden
                      ? Text('${ability.ability.name.capitalize()} (hidden)',
                          style: textTheme.subtitle2)
                      : Text(
                          '${ability.slot}. ${ability.ability.name.capitalize()}'),
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
                for (PokeTypes typeWeakness
                    in getTypeWeakness(pokeSummary.typeDefences))
                  WeaknessIcon(pokeTypes: typeWeakness)
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

TableRow _emptyTableRow() {
  return const TableRow(
    children: [SizedBox(), SizedBox()],
  );
}
