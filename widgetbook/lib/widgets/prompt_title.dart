import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Prompt Title', type: PromptTitle)
Widget buildPromptTitle(BuildContext context) => PromptTitle(
  text: context.knobs.string(
    label: 'Text',
    initialValue: 'Describe your favorite vacation destination.',
  ),
);
