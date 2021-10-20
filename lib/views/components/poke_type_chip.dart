import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/utils.dart';
import '../theme/theme.dart';

class PokeTypeChip extends StatelessWidget {
  const PokeTypeChip({
    Key? key,
    required this.pokeType,
  }) : super(key: key);

  final PokeType pokeType;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Palette.getTypeColor(pokeType),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
            width: 16,
            child: SvgPicture.asset(
              getPokeTypeIcon(pokeType),
              color: Palette.kWhite,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            stringFromPokeType(pokeType).capitalize(),
            style: textTheme.subtitle2!.copyWith(color: Palette.kWhite),
          ),
        ],
      ),
    );
  }
}
