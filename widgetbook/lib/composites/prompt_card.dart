import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils.dart';

@UseCase(name: 'PromptCard', type: PromptCard)
Widget buildPromptCard(BuildContext context) {
  final primaryButton = context.knobs.stringOrNull(label: 'Primary button');
  final secondaryButton = context.knobs.stringOrNull(label: 'Secondary button');

  return PromptCard(
    icon: context.knobs.objectOrNull
        .dropdown(label: 'Icon', options: SapnimiIcon.values, labelBuilder: (it) => it.name)
        ?.iconData,
    title: context.knobs.string(label: 'Title', initialValue: 'Kako poznaješ mladence?'),
    description: context.knobs.stringOrNull(label: 'Description'),
    extra: ButtonsRow(
      buttons: [
        if (secondaryButton != null) Button.secondary(text: secondaryButton, onPressed: () {}),
        if (primaryButton != null) Button(text: primaryButton, onPressed: () {}),
      ],
    ),
  );
}
