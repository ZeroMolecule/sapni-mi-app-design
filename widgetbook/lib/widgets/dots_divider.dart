import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Dots divider', type: DotsDivider)
Widget buildDotsDivider(BuildContext context) => DotsDivider(
  spacing: context.knobs.double.slider(label: 'Spacing', initialValue: 16, max: 64),
  dotCount: context.knobs.int.slider(label: 'Dot count', initialValue: 3, min: 1, max: 30),
  dotRadius: context.knobs.double.slider(label: 'Dot radius', initialValue: 8, min: 2, max: 32),
  color: context.knobs.color(label: 'Color', initialValue: Palette.grey40),
);
