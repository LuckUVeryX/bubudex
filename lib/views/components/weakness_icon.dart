import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/utils.dart';
import '../theme/theme.dart';

class WeaknessIcon extends StatelessWidget {
  const WeaknessIcon({
    Key? key,
    required this.pokeTypes,
  }) : super(key: key);

  final PokeTypes pokeTypes;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Palette.getTypeColor(pokeTypes),
      ),
      child: SvgPicture.asset(
        getPokeTypeIcon(pokeTypes),
        color: Colors.white,
        fit: BoxFit.contain,
      ),
    );
  }
}
