import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Focus Scaffold', type: FocusScaffold)
Widget buildFocusScaffold(BuildContext context) => FocusScaffold(
  child: PromptCard(
    icon: Icons.favorite,
    title: context.knobs.string(label: 'Title', initialValue: 'Dobro došli!'),
    description: context.knobs.string(
      label: 'Description',
      initialValue: 'Vestrum aequus atrox attero usus pauci pauci similique.',
    ),
    extra: ButtonsRow(
      buttons: [Button(text: 'Pokreni kameru', onPressed: () {})],
    ),
  ),
);
