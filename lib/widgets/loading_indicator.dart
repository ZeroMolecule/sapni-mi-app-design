import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    this.color,
    this.size = 36,
    this.alignment = Alignment.center,
    this.effect = LoadingEffect.beat,
    super.key,
  });

  final Color? color;
  final double size;
  final AlignmentGeometry alignment;
  final LoadingEffect effect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final animationBuilder = switch (effect) {
      LoadingEffect.beat => LoadingAnimationWidget.beat,
      LoadingEffect.newtonCradle => LoadingAnimationWidget.newtonCradle,
      LoadingEffect.progressiveDots => LoadingAnimationWidget.progressiveDots,
    };
    return Align(
      alignment: alignment,
      child: animationBuilder(color: color ?? theme.palette.primary, size: size),
    );
  }
}

enum LoadingEffect { beat, newtonCradle, progressiveDots }
