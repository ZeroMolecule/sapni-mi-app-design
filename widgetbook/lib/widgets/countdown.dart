import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Countdown', type: Countdown)
Widget buildCountdown(BuildContext context) => Countdown(
  seconds: context.knobs.int.slider(label: 'Seconds', min: 1, max: 10, initialValue: 5),
  label: context.knobs.string(label: 'Label', initialValue: 'Pripremite se za snimanje...'),
  size: context.knobs.int.slider(label: 'Size', min: 48, max: 420, initialValue: 190).toDouble(),
  color: context.knobs.colorOrNull(label: 'Color'),
);
