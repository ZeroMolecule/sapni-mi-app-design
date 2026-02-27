import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:sapnimi_design/widgets/gradient_scaffold.dart';

class PromptScaffold extends StatelessWidget {
  const PromptScaffold({required this.text, required this.child, super.key});

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) => GradientScaffold(
    child: Padding(
      padding: const EdgeInsets.only(left: 38, right: 38, top: 16, bottom: 24),
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PromptTitle(text: text),
          Expanded(child: child),
        ],
      ),
    ),
  );
}
