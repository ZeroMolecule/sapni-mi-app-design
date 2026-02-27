import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils.dart';

@UseCase(name: 'Decorated Icon', type: DecoratedIcon)
Widget buildDecoratedIcon(BuildContext context) => DecoratedIcon(
  icon: context.knobs.object
      .dropdown(
        label: 'Icon',
        options: SapnimiIcon.values,
        initialOption: SapnimiIcon.home,
        labelBuilder: (it) => it.name,
      )
      .iconData,
);
