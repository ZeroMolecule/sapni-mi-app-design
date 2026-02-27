import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class Countdown extends StatelessWidget {
  const Countdown({
    required this.seconds,
    required this.label,
    this.size = 360,
    this.color,
    super.key,
  });

  final int seconds;
  final String label;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = this.color ?? theme.palette.neutral1;
    return SizedBox(
      width: size,
      height: size + 20,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 20,
            child: _Indicator(text: seconds.toString(), size: size, color: color),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: theme.textStyles.message.copyWith(color: color, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({required this.text, required this.size, required this.color});

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color.withValues(alpha: .3), width: size * .02),
      ),
      child: Text(
        text,
        style: theme.textStyles.countNumber.copyWith(fontSize: size * .8, color: color, height: 1),
        textAlign: TextAlign.center,
      ),
    );
  }
}
