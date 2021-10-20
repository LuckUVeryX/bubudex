import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
    required this.svgAsset,
    required this.backgroundColor,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);

  final String svgAsset;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SvgPicture.asset(svgAsset, color: iconColor),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const CircleBorder(),
        padding: EdgeInsets.zero,
        primary: backgroundColor,
      ),
    );
  }
}
