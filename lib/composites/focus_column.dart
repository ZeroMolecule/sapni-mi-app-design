import 'package:flutter/material.dart';
import 'package:sapnimi_design/primitives/spacing.dart';

class FocusColumn extends StatelessWidget {
  const FocusColumn({required this.child, this.header, this.footer, super.key});

  final Widget? header;
  final Widget child;
  final Widget? footer;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    spacing: Spacing.sm,
    children: [
      ?header,
      Expanded(child: child),
      ?footer,
    ],
  );
}
