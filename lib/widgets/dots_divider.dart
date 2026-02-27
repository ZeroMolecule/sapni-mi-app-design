import 'package:flutter/material.dart';
import 'package:sapnimi_design/primitives/primitives.dart';

class DotsDivider extends StatelessWidget {
  const DotsDivider({
    this.spacing = 16.0,
    this.color = Palette.grey40,
    this.dotRadius = 8.0,
    this.dotCount = 3,
    super.key,
  });

  final double spacing;
  final Color color;
  final double dotRadius;
  final int dotCount;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    spacing: spacing,
    children: [
      for (var i = 0; i < dotCount; i++)
        Flexible(
          child: _Dot(radius: dotRadius, color: color),
        ),
    ],
  );
}

class _Dot extends StatelessWidget {
  const _Dot({required this.radius, required this.color});

  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    width: radius,
    height: radius,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );
}
