import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class GradientScaffold extends StatelessWidget {
  const GradientScaffold({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: DecoratedBox(
      decoration: const BoxDecoration(gradient: Gradients.background),
      child: SafeArea(child: child),
    ),
  );
}
