import 'package:flutter/widgets.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class Indicator extends StatelessWidget {
  const Indicator({required this.child, this.size = 48, super.key});

  final Widget child;
  final double size;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(gradient: Gradients.background, shape: BoxShape.circle),
    child: SizedBox(
      height: size,
      width: size,
      child: Center(child: child),
    ),
  );
}
