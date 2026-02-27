import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
abstract class TextStyles extends ThemeExtension<TextStyles> {
  const TextStyles({
    required this.h1,
    required this.h2,
    required this.subtitle,
    required this.label,
    required this.emailLabel,
    required this.message,
    required this.button,
    required this.indicator,
    required this.countNumber,
    required this.decorative,
    this.color,
  });

  factory TextStyles.of(BuildContext context) {
    final theme = Theme.of(context);
    return theme.extension<TextStyles>()!;
  }

  static Future<void> preloadFonts() async {
    await Future.microtask(() {});
    GoogleFonts.poppins();
    GoogleFonts.playfairDisplay();
    GoogleFonts.caveat();
    await GoogleFonts.pendingFonts();
    await Future.microtask(() {});
  }

  final Color? color;

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle subtitle;
  final TextStyle label;
  final TextStyle emailLabel;
  final TextStyle message;
  final TextStyle button;
  final TextStyle indicator;
  final TextStyle countNumber;
  final TextStyle decorative;

  @override
  ThemeExtension<TextStyles> copyWith() => this;

  @override
  ThemeExtension<TextStyles> lerp(covariant ThemeExtension<TextStyles>? other, double t) => this;

  TextTheme get material => TextTheme(
    displayLarge: h1,
    displayMedium: h2,
    headlineMedium: subtitle,
    headlineSmall: label,
    titleLarge: emailLabel,
    bodyLarge: message,
    labelLarge: button,
    bodyMedium: indicator,
  );
}

class DefaultTextStyles extends TextStyles {
  DefaultTextStyles({super.color})
    : super(
        h1: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 64, height: 1),
        h2: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 51, height: 67 / 51),
        subtitle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 40, height: 56 / 40),
        label: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 36, height: 50 / 36),
        emailLabel: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 32, height: 36 / 32),
        message: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 36, height: 55 / 36),
        button: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 32, height: 36 / 32),
        indicator: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 28, height: 32 / 28),
        countNumber: GoogleFonts.playfairDisplay(
          fontWeight: FontWeight.w700,
          fontSize: 320,
          height: 1,
        ),
        decorative: GoogleFonts.caveat(fontWeight: FontWeight.w400, fontSize: 46, height: 60 / 46),
      );

  @override
  ThemeExtension<TextStyles> copyWith() => this;

  @override
  ThemeExtension<TextStyles> lerp(covariant ThemeExtension<TextStyles>? other, double t) => this;
}
