import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Loading Indicator', type: LoadingIndicator)
Widget buildLoadingIndicator(BuildContext context) => LoadingIndicator(
  size: context.knobs.double.slider(label: 'Size', min: 16, max: 100, initialValue: 36),
  color: context.knobs.colorOrNull(label: 'Color'),
  effect: context.knobs.object.dropdown<LoadingEffect>(
    label: 'Effect',
    options: LoadingEffect.values,
    initialOption: LoadingEffect.beat,
    labelBuilder: (it) => it.name,
  ),
);
