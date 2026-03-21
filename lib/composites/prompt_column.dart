import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class PromptColumn extends StatelessWidget {
  const PromptColumn({required this.child, this.title, this.buttons, super.key});

  final String? title;
  final List<Button>? buttons;
  final Widget child;

  @override
  Widget build(BuildContext context) => FocusColumn(
    header: title == null ? null : PromptTitle(text: title!),
    footer: buttons == null || buttons!.isEmpty
        ? null
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              spacing: Spacing.lg,
              children: [for (final button in buttons!) Expanded(child: button)],
            ),
          ),
    child: child,
  );
}
