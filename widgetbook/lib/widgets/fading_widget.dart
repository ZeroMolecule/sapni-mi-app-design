import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Fading Image', type: FadingWidget)
Widget buildFadingImage(BuildContext context) => FadingWidget(
  child: Image.network('https://picsum.photos/800', width: 400, height: 400, fit: BoxFit.contain),
);

@UseCase(name: 'Fading Text', type: FadingWidget)
Widget buildFadingText(BuildContext context) => const FadingWidget(
  child: Text(
    'This is an example of a fading widget. The text will gradually fade out towards the right side.',
    style: TextStyle(fontSize: 24),
  ),
);
