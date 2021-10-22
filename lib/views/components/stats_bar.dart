import 'package:flutter/material.dart';

import '../../utils/utils.dart';

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
    final maxStatsLength =
        (MediaQuery.of(context).size.width - kTabsPadding * 2) * 3 / 8;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: value / kMaxPokeStat * maxStatsLength,
        height: 4,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
