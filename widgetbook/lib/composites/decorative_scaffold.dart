import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/utils.dart';

@UseCase(name: 'Decorative Scaffold', type: DecorativeScaffold)
Widget buildDecorativeScaffold(BuildContext context) => DecorativeScaffold(
  icon: context.knobs.object
      .dropdown(
        label: 'Icon',
        options: SapnimiIcon.values,
        labelBuilder: (it) => it.name,
        initialOption: SapnimiIcon.home,
      )
      .iconData,
  title: context.knobs.string(label: 'Title', initialValue: 'Dragi naši'),
  text: context.knobs.string(
    label: 'Text',
    initialValue:
        'Ara cognatus sed catena vero benevolentia. Titulus truculenter peccatus cur adfectus. Careo bibo patior dicta solus velociter cometes autem advoco volo.',
  ),
  action: Button(text: 'Snimi poruku', onPressed: () {}, icon: Icons.emergency_recording_sharp),
  decoration: Image.network(
    context.knobs.string(label: 'Image URL', initialValue: 'https://picsum.photos/2000'),
    fit: BoxFit.cover,
  ),
);
