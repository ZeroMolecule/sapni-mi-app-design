import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_workspace/main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightTheme = WidgetbookTheme(name: 'light', data: SapnimiTheme.light);
    return Widgetbook.material(
      directories: directories,
      themeMode: ThemeMode.light,
      lightTheme: lightTheme.data,
      addons: [
        MaterialThemeAddon(initialTheme: lightTheme, themes: [lightTheme]),
        BuilderAddon(
          name: 'Background',
          builder: (context, child) => ColoredBox(color: const Color(0xFFFF0000), child: child),
        ),
        AlignmentAddon(),
      ],
    );
  }
}
