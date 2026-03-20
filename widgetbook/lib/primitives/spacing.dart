import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class SpacingShowcase extends StatelessWidget {
  const SpacingShowcase({super.key});

  static const _tokens = <String, double>{
    'xs': Spacing.xs,
    'sm': Spacing.sm,
    'md': Spacing.md,
    'lg': Spacing.lg,
    'xl': Spacing.xl,
    'xxl': Spacing.xxl,
    'xxxl': Spacing.xxxl,
    'section': Spacing.section,
  };

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    padding: const EdgeInsets.all(24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        for (final entry in _tokens.entries)
          _SpacingRow(name: entry.key, value: entry.value),
      ],
    ),
  );
}

class _SpacingRow extends StatelessWidget {
  const _SpacingRow({required this.name, required this.value});

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(
        width: 80,
        child: Text(
          'Spacing.$name',
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54),
        ),
      ),
      const SizedBox(width: 12),
      Container(width: value, height: 20, color: Palette.deepPlum),
      const SizedBox(width: 8),
      Text(
        '${value.toInt()}px',
        style: const TextStyle(fontSize: 12, color: Colors.black45),
      ),
    ],
  );
}

@UseCase(name: 'Spacing', type: SpacingShowcase)
Widget buildSpacing(BuildContext context) => const SpacingShowcase();
