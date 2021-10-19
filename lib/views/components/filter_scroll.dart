import 'package:flutter/material.dart';

import 'components.dart';

class FilterTypeScroll<T> extends StatelessWidget {
  const FilterTypeScroll({
    Key? key,
    required this.horizontalPad,
    required this.title,
    required this.enumValues,
    required this.getSvgAsset,
    required this.getColor,
  }) : super(key: key);

  final double horizontalPad;
  final String title;
  final List<T> enumValues;
  final String Function(T) getSvgAsset;
  final Color Function(T) getColor;

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
              for (T pokeType in enumValues)
                FilterButton(
                  svgAsset: getSvgAsset(pokeType),
                  color: getColor(pokeType),
                ),
              SizedBox(width: horizontalPad),
            ],
          ),
        ),
      ],
    );
  }
}
