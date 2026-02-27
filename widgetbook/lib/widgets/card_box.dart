import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'CardBox', type: CardBox)
Widget buildCardBox(BuildContext context) {
  final padding = context.knobs.int.slider(label: 'padding', max: 48, initialValue: 20);
  final text = context.knobs.string(label: 'text', initialValue: 'This is a CardBox widget');
  return CardBox(padding: EdgeInsets.all(padding.toDouble()), child: Text(text));
}
