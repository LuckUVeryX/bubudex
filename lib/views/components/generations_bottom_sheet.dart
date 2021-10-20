import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../utils/utils.dart';
import '../../view_models/view_models.dart';
import '../theme/theme.dart';

class GenerationsBottomSheet extends StatelessWidget {
  const GenerationsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      maxChildSize: 0.8,
      expand: false,
      builder: (_, scrollController) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Generations', style: textTheme.headline6),
                  const SizedBox(height: 4),
                  const Text(
                      'Use search for generations to explore your Pokémon!'),
                ],
              ),
            ),
            const Spacer(),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                for (Generation generation in Generation.values)
                  _GenerationButton(generation: generation),
              ],
            ),
            const Spacer(flex: 2),
          ],
        );
      },
    );
  }
}

class _GenerationButton extends StatelessWidget {
  const _GenerationButton({
    Key? key,
    required this.generation,
  }) : super(key: key);

  final Generation generation;
  @override
  Widget build(BuildContext context) {
    final buttonWidth = (MediaQuery.of(context).size.width - 32 - 16 * 2) / 2;

    return SizedBox(
      height: 120,
      width: buttonWidth,
      child: Consumer<PokeListProvider>(builder: (_, pokeListProvider, __) {
        return ElevatedButton(
          onPressed: () {
            pokeListProvider.toggleGeneration(generation);
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (String asset in getGenerationImg(generation))
                      SizedBox(
                        height: 40,
                        width: (buttonWidth - 32 * 2) / 3,
                        child: Image.asset(asset),
                      ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(generation.toString().replaceFirst('.', ' '))
              ],
            ),
          ),
          style: pokeListProvider.generationFilter.contains(generation)
              ? selectedButtonStyle
              : unselectedButtonStyle,
        );
      }),
    );
  }
}
