import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class TimeIndicator extends StatelessWidget {
  const TimeIndicator({required this.time, required this.isActive, this.size = 120, super.key});

  final Duration time;
  final bool isActive;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final minutes = time.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = time.inSeconds.remainder(60).toString().padLeft(2, '0');
    final timeString = '$minutes:$seconds';

    return Indicator(
      size: size,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 2,
        children: [
          if (isActive) Icon(Icons.circle, color: theme.palette.other1, size: size * .15),
          Flexible(
            child: Text(
              timeString,
              maxLines: 1,
              style: theme.textStyles.indicator.copyWith(fontSize: size * .2, height: 1),
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }
}
