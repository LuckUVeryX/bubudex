import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({Key? key, required this.svgAsset, required this.color})
      : super(key: key);

  final String svgAsset;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(height: 48, width: 48),
        child: TextButton(
          onPressed: () {},
          child: SvgPicture.asset(svgAsset, color: color),
          style: TextButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.zero,
            // primary: Palette.getTypeColor(pokeType),
            primary: Colors.white,
          ),
        ),
      ),
    );
  }
}
