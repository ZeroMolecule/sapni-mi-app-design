import 'package:flutter/material.dart';

class FadingWidget extends StatelessWidget {
  const FadingWidget({
    required this.child,
    this.begin = Alignment.centerRight,
    this.end = Alignment.centerLeft,
    this.stops = const [0, 1.0],
    super.key,
  });

  final Widget child;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<double> stops;

  @override
  Widget build(BuildContext context) => ShaderMask(
    shaderCallback: (Rect bounds) => LinearGradient(
      begin: begin,
      end: end,
      stops: stops,
      colors: const [Colors.black, Colors.transparent],
    ).createShader(bounds),
    blendMode: BlendMode.dstIn,
    child: Transform.translate(
      offset: const Offset(.5, -.5),
      child: child,
    ),
  );
}
