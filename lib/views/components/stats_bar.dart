import 'package:flutter/material.dart';

class StatsValueBar extends StatelessWidget {
  const StatsValueBar({
    Key? key,
    required this.color,
    required this.value,
  }) : super(key: key);

  final Color color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: value,
        height: 4,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
