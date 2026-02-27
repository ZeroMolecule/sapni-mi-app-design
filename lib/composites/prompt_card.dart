import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' hide Action, Card;
import 'package:sapnimi_design/sapnimi_design.dart';

class PromptCard extends StatelessWidget {
  const PromptCard({required this.title, this.icon, this.description, this.extra, super.key});

  final IconData? icon;
  final String title;
  final String? description;
  final Widget? extra;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CardBox(
      child: Column(
        spacing: 32,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) DecoratedIcon(icon: icon!),
          AutoSizeText(
            title,
            style: theme.textStyles.h1.copyWith(color: theme.palette.primary),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          if (description != null)
            AutoSizeText(
              description!,
              style: theme.textStyles.message.copyWith(color: Palette.warmTaupe),
              textAlign: TextAlign.center,
            ),
          if (extra != null) extra!,
        ],
      ),
    );
  }
}
