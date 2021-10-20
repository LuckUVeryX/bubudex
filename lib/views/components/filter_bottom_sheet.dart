import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/utils.dart';
import '../../view_models/view_models.dart';
import '../theme/theme.dart';
import 'components.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    Key? key,
  }) : super(key: key);

  static const double horizontalPad = 32;
  @override
  Widget build(BuildContext context) {
    debugPrint('Showing Filter Bottom Sheet');
    final textTheme = Theme.of(context).textTheme;
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );

    final pokeListProvider =
        Provider.of<PokeListProvider>(context, listen: false);

    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (_, scrollController) {
        return SizedBox(
          height: 400,
          width: 400,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            controller: scrollController,
            children: [
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalPad),
                child: Text('Filters', style: textTheme.headline6),
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPad),
                child: Text(
                    'Use advanced search to explore Pokémon by type, weakness, height and more!'),
              ),
              const SizedBox(height: 16),
              FilterTypeScroll<PokeType>(
                title: 'Types',
                horizontalPad: horizontalPad,
                enumValues: PokeType.values,
                getSvgAsset: getPokeTypeIcon,
                getFilterColor: pokeListProvider.getTypeColor,
                onPressed: pokeListProvider.toggleTypeFilter,
              ),
              FilterTypeScroll<PokeType>(
                title: 'Weaknessses',
                horizontalPad: horizontalPad,
                enumValues: PokeType.values,
                getSvgAsset: getPokeTypeIcon,
                getFilterColor: pokeListProvider.getWeaknessColor,
                onPressed: pokeListProvider.toggleWeaknessFilter,
              ),
              FilterTypeScroll<PokeHeight>(
                title: 'Heights',
                horizontalPad: horizontalPad,
                enumValues: PokeHeight.values,
                getSvgAsset: getPokeHeightIcon,
                getFilterColor: pokeListProvider.getHeightColor,
                onPressed: pokeListProvider.toggleHeightFilter,
              ),
              FilterTypeScroll<PokeWeight>(
                title: 'Weights',
                horizontalPad: horizontalPad,
                enumValues: PokeWeight.values,
                getSvgAsset: getPokeWeightIcon,
                getFilterColor: pokeListProvider.getWeightColor,
                onPressed: pokeListProvider.toggleWeightFilter,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPad - 24),
                child: Slider(
                  onChanged: (value) {},
                  value: 0.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: horizontalPad),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          style: buttonStyle.copyWith(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                                Palette.kPressedInput),
                          ),
                          onPressed: () {
                            pokeListProvider.resetFilters();
                          },
                          child: const Text('Reset'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          style: buttonStyle.copyWith(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Palette.kPsychic),
                          ),
                          onPressed: () {},
                          child: const Text('Apply'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
