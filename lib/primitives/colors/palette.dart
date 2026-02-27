import 'package:flutter/material.dart';

@immutable
abstract class Palette extends ThemeExtension<Palette> {
  const Palette({
    required this.primary,
    required this.secondary,
    required this.disabled1,
    required this.disabled2,
    required this.disabled3,
    required this.disabled4,
    required this.neutral1,
    required this.opacity1,
    required this.opacity2,
    required this.opacity3,
    required this.opacity4,
    required this.opacity5,
    required this.opacity6,
    required this.other1,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.cardBackground,
  });

  factory Palette.of(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    if (palette == null) {
      throw Exception('No Palette found in the current theme context');
    }
    return palette;
  }

  static const Color deepPlum = Color(0xFF5C3841);
  static const Color deepPlum10 = Color(0x1A5C3841);
  static const Color dustyRose = Color(0xFF776B67);
  static const Color espresso = Color(0xFF302D27);
  static const Color ivoryWhite = Color(0xFFFAF4E9);
  static const Color mutedClay = Color(0xFF8C8481);
  static const Color mutedClay40 = Color(0x668C8481);
  static const Color softLinen = Color(0xFFE6E1DF);
  static const Color softLinen80 = Color(0xCCE6E1DF);
  static const Color cardBackgroundColor = Color(0xFFE8E8E8);
  static const Color vibrantRed = Color(0xFFEF4444);
  static const Color warmTaupe = Color(0xFF7B6E63);
  static const Color warmTaupe10 = Color(0x1A8B7F75);
  static const Color warmTaupe40 = Color(0x668B7F75);
  static const Color white30 = Color(0x4DFFFFFF);
  static const Color white70 = Color(0xB3FFFFFF);
  static const Color white80 = Color(0xCCFFFFFF);
  static const Color white90 = Color(0xF0FFFFFF);
  static const Color grey40 = Color(0x668B7F75);

  final Color primary;
  final Color secondary;

  final Color disabled1;
  final Color disabled2;
  final Color disabled3;
  final Color disabled4;
  final Color neutral1;
  final Color opacity1;
  final Color opacity2;
  final Color opacity3;
  final Color opacity4;
  final Color opacity5;
  final Color opacity6;
  final Color other1;
  final Color text1;
  final Color text2;
  final Color text3;
  final Color cardBackground;

  @override
  Palette copyWith() => this;

  @override
  Palette lerp(ThemeExtension<Palette>? other, double t) => this;

  ColorScheme get material => ColorScheme(
    primary: primary,
    primaryContainer: secondary,
    secondary: secondary,
    secondaryContainer: cardBackground,
    surface: neutral1,
    error: vibrantRed,
    onPrimary: neutral1,
    onSecondary: text1,
    onSurface: text1,
    onError: white80,
    brightness: Brightness.light,
  );
}

class LightPalette extends Palette {
  const LightPalette()
    : super(
        primary: Palette.deepPlum,
        secondary: Palette.warmTaupe,
        disabled1: Palette.softLinen,
        disabled2: Palette.mutedClay,
        disabled3: Palette.softLinen80,
        disabled4: Palette.dustyRose,
        neutral1: Palette.ivoryWhite,
        opacity1: Palette.white70,
        opacity2: Palette.warmTaupe40,
        opacity3: Palette.deepPlum10,
        opacity4: Palette.white30,
        opacity5: Palette.warmTaupe10,
        opacity6: Palette.white80,
        other1: Palette.vibrantRed,
        text1: Palette.deepPlum,
        text2: Palette.espresso,
        text3: Palette.warmTaupe,
        cardBackground: Palette.cardBackgroundColor,
      );
}
