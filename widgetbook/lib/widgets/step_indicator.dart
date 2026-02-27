import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'StepIndicator', type: StepIndicator)
Widget buildStepIndicator(BuildContext context) => StepIndicator(
  current: context.knobs.int.slider(label: 'Step', min: 1, max: 10, initialValue: 1),
  total: context.knobs.int.slider(label: 'Total', min: 1, max: 10, initialValue: 10),
  size:  context.knobs.double.slider(label: 'Size', min: 24, max: 120, initialValue: 48),
);
