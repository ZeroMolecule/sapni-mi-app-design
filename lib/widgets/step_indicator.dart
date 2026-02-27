import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class StepIndicator extends StatelessWidget {
  const StepIndicator({required this.current, required this.total, this.size = 90, super.key});

  final int current;
  final int total;
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Indicator(
      size: size,
      child: Padding(
        padding: EdgeInsets.only(top: 3 * (size / 48)),
        child: Text(
          '$current / $total',
          style: theme.textStyles.indicator.copyWith(height: 1, fontSize: size * .3),
        ),
      ),
    );
  }
}
