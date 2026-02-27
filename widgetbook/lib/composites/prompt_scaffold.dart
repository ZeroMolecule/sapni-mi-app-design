import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'PromptScaffold', type: PromptScaffold)
Widget buildPromptScaffold(BuildContext context) => PromptScaffold(
  text: context.knobs.string(label: 'Title', initialValue: 'Title'),
  child: const SizedBox.expand(child: ColoredBox(color: Colors.pink)),
);
