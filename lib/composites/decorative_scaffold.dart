import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class DecorativeScaffold extends StatelessWidget {
  const DecorativeScaffold({
    required this.icon,
    required this.title,
    required this.text,
    required this.action,
    required this.decoration,
    super.key,
  });

  final IconData icon;
  final String title;
  final String text;
  final Button action;
  final Widget decoration;

  @override
  Widget build(BuildContext context) => GradientScaffold(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 12,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, bottom: 32, top: 32),
            child: _Child(icon: icon, title: title, text: text, action: action),
          ),
        ),
        Expanded(flex: 2, child: FadingWidget(child: decoration)),
      ],
    ),
  );
}

class _Child extends StatelessWidget {
  const _Child({required this.icon, required this.title, required this.text, required this.action});

  final IconData icon;
  final String title;
  final String text;
  final Button action;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12,
      children: [
        DecoratedIcon(icon: icon),
        Text(
          title,
          style: theme.textStyles.h1.copyWith(color: theme.palette.text1),
          textAlign: TextAlign.center,
        ),
        Flexible(
          child: AutoSizeText(
            text,
            style: theme.textStyles.decorative.copyWith(color: theme.palette.text2),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 18),
        action,
      ],
    );
  }
}
