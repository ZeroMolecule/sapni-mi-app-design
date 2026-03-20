import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Gradient Scaffold', type: GradientScaffold)
Widget buildGradientScaffold(BuildContext context) => GradientScaffold(
  child: Center(
    child: Text(
      context.knobs.string(label: 'Content', initialValue: 'Content goes here'),
      style: Theme.of(context).textStyles.message,
    ),
  ),
);
