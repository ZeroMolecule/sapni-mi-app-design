import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Single button', type: ButtonsRow)
Widget buildButtonsRowSingle(BuildContext context) => ButtonsRow(
  buttons: [
    Button(
      text: context.knobs.string(label: 'Text', initialValue: 'Continue'),
      onPressed: () {},
    ),
  ],
);

@UseCase(name: 'Primary + Secondary', type: ButtonsRow)
Widget buildButtonsRowPrimarySecondary(BuildContext context) => ButtonsRow(
  buttons: [
    Button.secondary(
      text: context.knobs.string(label: 'Secondary text', initialValue: 'Cancel'),
      onPressed: () {},
    ),
    Button(
      text: context.knobs.string(label: 'Primary text', initialValue: 'Confirm'),
      onPressed: context.knobs.boolean(label: 'Primary enabled', initialValue: true) ? () {} : null,
    ),
  ],
);
