import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

sealed class SapnimiTheme {
  const SapnimiTheme._();

  static ThemeData get light => _build();

  static ThemeData _build() {
    const palette = LightPalette();
    final textStyles = DefaultTextStyles(color: palette.text1);

    final buttonStyles = ButtonStyles(
      primary: ButtonDecoration(
        foregroundColor: palette.neutral1,
        backgroundColor: palette.primary,
      ),
      secondary: ButtonDecoration(
        foregroundColor: palette.primary,
        backgroundColor: palette.neutral1,
        borderSide: BorderSide(color: palette.primary, width: 1.5),
      ),
    );

    return ThemeData(
      colorScheme: palette.material,
      textTheme: textStyles.material,
      scaffoldBackgroundColor: palette.disabled1,
      inputDecorationTheme: InputDecorationThemeData(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: palette.primary),
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[palette, textStyles, buttonStyles],
    );
  }

  static Future<void> initialize() async {
    await TextStyles.preloadFonts();
  }
}

class ButtonStyles extends ThemeExtension<ButtonStyles> {
  const ButtonStyles({required this.primary, required this.secondary});

  final ButtonDecoration primary;
  final ButtonDecoration secondary;

  @override
  ButtonStyles copyWith({ButtonDecoration? primary, ButtonDecoration? secondary}) =>
      ButtonStyles(primary: primary ?? this.primary, secondary: secondary ?? this.secondary);

  @override
  ThemeExtension<ButtonStyles> lerp(covariant ThemeExtension<ButtonStyles>? other, double t) {
    if (other is! ButtonStyles) {
      return this;
    }
    return ButtonStyles(
      primary: ButtonDecoration.lerp(primary, other.primary, t),
      secondary: ButtonDecoration.lerp(secondary, other.secondary, t),
    );
  }
}

extension ThemeDataExtensions on ThemeData {
  TextStyles get textStyles => extension<TextStyles>()!;

  Palette get palette => extension<Palette>()!;

  ButtonStyles get buttonStyles => extension<ButtonStyles>()!;
}
