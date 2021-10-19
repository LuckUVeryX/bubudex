import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../theme/theme.dart';
import 'components.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    Key? key,
  }) : super(key: key);

  static const double horizontalPad = 32;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );

    return DraggableScrollableSheet(
      initialChildSize: 0.4,
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
              const FilterTypeScroll<PokeType>(
                title: 'Types',
                enumValues: PokeType.values,
                getSvgAsset: getPokeTypeIcon,
                getColor: Palette.getTypeColor,
                horizontalPad: horizontalPad,
              ),
              const FilterTypeScroll<PokeType>(
                title: 'Weaknessses',
                enumValues: PokeType.values,
                getSvgAsset: getPokeTypeIcon,
                getColor: Palette.getTypeColor,
                horizontalPad: horizontalPad,
              ),
              const FilterTypeScroll<PokeHeight>(
                title: 'Heights',
                enumValues: PokeHeight.values,
                getSvgAsset: getPokeHeightIcon,
                getColor: Palette.getHeightColor,
                horizontalPad: horizontalPad,
              ),
              const FilterTypeScroll<PokeWeight>(
                title: 'Weights',
                enumValues: PokeWeight.values,
                getSvgAsset: getPokeWeightIcon,
                getColor: Palette.getWeightColor,
                horizontalPad: horizontalPad,
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
                          onPressed: () {},
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
