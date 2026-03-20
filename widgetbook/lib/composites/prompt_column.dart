import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Prompt Column', type: PromptColumn)
Widget buildPromptColumn(BuildContext context) {
  final title = context.knobs.stringOrNull(
    label: 'Title',
    initialValue: 'Opišite omiljeno odredište za odmor.',
  );
  final primaryText = context.knobs.stringOrNull(label: 'Primary button', initialValue: 'Dalje');
  final secondaryText = context.knobs.stringOrNull(label: 'Secondary button');

  final buttons = [
    if (secondaryText != null) Button.secondary(text: secondaryText, onPressed: () {}),
    if (primaryText != null) Button(text: primaryText, onPressed: () {}),
  ];

  return PromptColumn(
    title: title,
    buttons: buttons.isEmpty ? null : buttons,
    child: const ColoredBox(color: Color(0xFFDDD6C8)),
  );
}
