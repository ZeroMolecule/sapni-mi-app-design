import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

enum _ButtonVariant { primary, secondary }

class Button extends StatelessWidget {
  const Button({
    required this.text,
    this.icon,
    this.onPressed,
    this.decoration = const ButtonDecoration(),
    super.key,
  }) : _variant = _ButtonVariant.primary;

  const Button.secondary({
    required this.text,
    this.icon,
    this.onPressed,
    this.decoration = const ButtonDecoration(),
    super.key,
  }) : _variant = _ButtonVariant.secondary;

  final String text;
  final IconData? icon;
  final VoidCallback? onPressed;
  final ButtonDecoration decoration;
  final _ButtonVariant _variant;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final styles = theme.extension<ButtonStyles>();
    final base = _variant == _ButtonVariant.secondary ? styles?.secondary : styles?.primary;
    final decoration = base?.merge(this.decoration) ?? this.decoration;

    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: decoration.backgroundColor,
      padding: decoration.padding,
      shape: RoundedRectangleBorder(borderRadius: decoration.borderRadius),
      child: _Child(icon: icon, decoration: decoration, text: text),
    );
  }
}

@immutable
class ButtonDecoration {
  const ButtonDecoration({
    this.backgroundColor,
    this.foregroundColor,
    this.backgroundGradient,
    this.padding = const EdgeInsets.symmetric(horizontal: 40, vertical: 26),
    this.spacing = 16.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
  });

  factory ButtonDecoration.lerp(ButtonDecoration a, ButtonDecoration b, double t) =>
      ButtonDecoration(
        backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t),
        foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t),
        backgroundGradient:
            Gradient.lerp(a.backgroundGradient, b.backgroundGradient, t) as LinearGradient?,
        padding: EdgeInsets.lerp(a.padding, b.padding, t)!,
        spacing: lerpDouble(a.spacing, b.spacing, t)!,
        borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
      );

  final Color? backgroundColor;
  final Color? foregroundColor;
  final LinearGradient? backgroundGradient;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final double spacing;

  ButtonDecoration copyWith({
    Color? backgroundColor,
    Color? foregroundColor,
    LinearGradient? backgroundGradient,
    EdgeInsets? padding,
    double? spacing,
    BorderRadius? borderRadius,
  }) => ButtonDecoration(
    backgroundColor: backgroundColor ?? this.backgroundColor,
    foregroundColor: foregroundColor ?? this.foregroundColor,
    backgroundGradient: backgroundGradient ?? this.backgroundGradient,
    padding: padding ?? this.padding,
    spacing: spacing ?? this.spacing,
    borderRadius: borderRadius ?? this.borderRadius,
  );

  ButtonDecoration merge(ButtonDecoration? other) {
    if (other == null) {
      return this;
    }
    return copyWith(
      backgroundColor: other.backgroundColor,
      foregroundColor: other.foregroundColor,
      backgroundGradient: other.backgroundGradient,
      padding: other.padding,
      spacing: other.spacing,
      borderRadius: other.borderRadius,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is ButtonDecoration &&
        other.backgroundColor == backgroundColor &&
        other.foregroundColor == foregroundColor &&
        other.backgroundGradient == backgroundGradient &&
        other.padding == padding &&
        other.spacing == spacing &&
        other.borderRadius == borderRadius;
  }

  @override
  int get hashCode =>
      Object.hash(backgroundColor, foregroundColor, backgroundGradient, padding, spacing, borderRadius);

  @override
  String toString() =>
      'ButtonDecoration(backgroundColor: $backgroundColor, foregroundColor: $foregroundColor, backgroundGradient: $backgroundGradient, padding: $padding, spacing: $spacing, borderRadius: $borderRadius)';
}

class _Child extends StatelessWidget {
  const _Child({required this.text, required this.icon, required this.decoration});

  final String text;
  final IconData? icon;
  final ButtonDecoration decoration;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textStyles.button.copyWith(
      color: decoration.foregroundColor ?? theme.colorScheme.onSurface,
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: decoration.spacing,
      children: [
        Flexible(
          child: Text(
            text,
            style: textStyle,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (icon != null) Icon(icon, color: textStyle.color, size: textStyle.fontSize),
      ],
    );
  }
}
