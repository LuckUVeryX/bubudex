import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/utils.dart';
import '../theme/theme.dart';

class WeaknessIcon extends StatelessWidget {
  const WeaknessIcon({
    Key? key,
    required this.pokeType,
  }) : super(key: key);

  final PokeTypes pokeType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Palette.getTypeColor(pokeType),
      ),
      child: SvgPicture.asset(
        getPokeTypeIcon(pokeType),
        color: Colors.white,
        fit: BoxFit.contain,
      ),
    );
  }
}
