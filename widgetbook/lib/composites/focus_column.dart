import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Focus Column', type: FocusColumn)
Widget buildFocusColumn(BuildContext context) => const FocusColumn(
  header: PromptTitle(text: 'Some text'),
  footer: Row(children: [Button(text: 'Botun 1')]),
  child: ColoredBox(color: Colors.yellow),
);
