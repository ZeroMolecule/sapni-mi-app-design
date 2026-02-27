import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'TimeIndicator', type: TimeIndicator)
Widget buildTimeIndicator(BuildContext context) {
  final duration = Duration(
    minutes: context.knobs.int.slider(label: 'Minutes', max: 59, initialValue: 5),
    seconds: context.knobs.int.slider(label: 'Seconds', max: 59, initialValue: 30),
  );
  return TimeIndicator(
    time: duration,
    isActive: context.knobs.boolean(label: 'Is Active', initialValue: true),
    size: context.knobs.double.slider(label: 'Size', min: 24, max: 120, initialValue: 60),
  );
}
