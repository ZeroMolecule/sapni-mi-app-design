import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class PromptTitle extends StatelessWidget {
  const PromptTitle({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CardBox(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: AutoSizeText(
        text,
        style: theme.textStyles.h2.copyWith(color: theme.palette.primary),
        maxLines: 2,
        maxFontSize: 51,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
