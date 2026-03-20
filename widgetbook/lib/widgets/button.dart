import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils.dart';

@UseCase(name: 'Primary', type: Button)
Widget buildButton(BuildContext context) => Button(
  decoration: ButtonDecoration(
    foregroundColor: context.knobs.colorOrNull(label: 'Foreground color'),
    backgroundColor: context.knobs.colorOrNull(label: 'Background color'),
    borderRadius: BorderRadius.circular(
      context.knobs.int.slider(label: 'Border radius', max: 30, initialValue: 10).toDouble(),
    ),
    spacing: context.knobs.int.slider(label: 'Spacing', max: 24, initialValue: 8).toDouble(),
    padding: EdgeInsets.symmetric(
      vertical: context.knobs.int
          .slider(label: 'Vertical padding', max: 32, initialValue: 12)
          .toDouble(),
      horizontal: context.knobs.int
          .slider(label: 'Horizontal padding', max: 32, initialValue: 16)
          .toDouble(),
    ),
  ),
  onPressed: context.knobs.boolean(label: 'Enabled', initialValue: true) ? () {} : null,
  text: context.knobs.string(label: 'Text', initialValue: 'Button'),
  icon: context.knobs.objectOrNull
      .dropdown<SapnimiIcon>(
        label: 'Icon',
        options: SapnimiIcon.values,
        labelBuilder: (it) => it.name,
      )
      ?.iconData,
);

@UseCase(name: 'Secondary', type: Button)
Widget buildSecondaryButton(BuildContext context) => Button.secondary(
  onPressed: context.knobs.boolean(label: 'Enabled', initialValue: true) ? () {} : null,
  text: context.knobs.string(label: 'Text', initialValue: 'Cancel'),
  icon: context.knobs.objectOrNull
      .dropdown<SapnimiIcon>(
        label: 'Icon',
        options: SapnimiIcon.values,
        labelBuilder: (it) => it.name,
      )
      ?.iconData,
);
