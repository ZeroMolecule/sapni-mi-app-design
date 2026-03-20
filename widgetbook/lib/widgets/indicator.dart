import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils.dart';

@UseCase(name: 'Indicator', type: Indicator)
Widget buildIndicator(BuildContext context) {
  final size = context.knobs.double.slider(label: 'Size', min: 32, max: 200, initialValue: 48);
  final icon = context.knobs.object
      .dropdown<SapnimiIcon>(
        label: 'Icon',
        options: SapnimiIcon.values,
        initialOption: SapnimiIcon.home,
        labelBuilder: (it) => it.name,
      )
      .iconData;

  return Indicator(
    size: size,
    child: Icon(icon, color: Palette.deepPlum, size: size * 0.5),
  );
}
