import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/poke_list_provider.dart';
import '../theme/theme.dart';
import 'components.dart';

class FilterTypeScroll<T> extends StatelessWidget {
  const FilterTypeScroll({
    Key? key,
    required this.horizontalPad,
    required this.title,
    required this.enumValues,
    required this.getSvgAsset,
    required this.getFilterColor,
    required this.onPressed,
  }) : super(key: key);

  final double horizontalPad;
  final String title;
  final List<T> enumValues;
  final String Function(T) getSvgAsset;
  final FilterColor Function(T) getFilterColor;
  final void Function(T) onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPad),
          child: Text(title, style: textTheme.bodyText1),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: horizontalPad - 4, height: 60),
              for (T type in enumValues)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ConstrainedBox(
                    constraints:
                        const BoxConstraints.tightFor(height: 48, width: 48),
                    child: Consumer<PokeListProvider>(
                      builder: (_, pokeListProvider, __) {
                        FilterColor filterColor = getFilterColor(type);
                        return FilterButton(
                          svgAsset: getSvgAsset(type),
                          iconColor: filterColor.icon,
                          backgroundColor: filterColor.background,
                          onPressed: () => onPressed(type),
                        );
                      },
                    ),
                  ),
                ),
              SizedBox(width: horizontalPad),
            ],
          ),
        ),
      ],
    );
  }
}
