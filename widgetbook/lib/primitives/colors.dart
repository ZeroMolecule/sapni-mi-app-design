import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

int _channel(double v) => (v * 255.0).round().clamp(0, 255);

String _hex(Color c) {
  final r = _channel(c.r).toRadixString(16).padLeft(2, '0').toUpperCase();
  final g = _channel(c.g).toRadixString(16).padLeft(2, '0').toUpperCase();
  final b = _channel(c.b).toRadixString(16).padLeft(2, '0').toUpperCase();
  final hex = '#$r$g$b';
  final alpha = _channel(c.a);
  if (alpha == 255) {
    return hex;
  }
  final pct = (c.a * 100).round();
  return '$hex  $pct%';
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.name, required this.color});

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 88,
        height: 56,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      const SizedBox(height: 4),
      Text(name, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
      Text(_hex(color), style: const TextStyle(fontSize: 10, color: Colors.black54)),
    ],
  );
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.colors});

  final String title;
  final Map<String, Color> colors;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
      ),
      const SizedBox(height: 12),
      Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          for (final e in colors.entries) _Swatch(name: e.key, color: e.value),
        ],
      ),
    ],
  );
}

class ColorPaletteShowcase extends StatelessWidget {
  const ColorPaletteShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final p = Palette.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 32,
        children: [
          _Section(
            title: 'Semantic — Brand',
            colors: {'primary': p.primary, 'secondary': p.secondary, 'neutral1': p.neutral1},
          ),
          _Section(
            title: 'Semantic — Text',
            colors: {'text1': p.text1, 'text2': p.text2, 'text3': p.text3},
          ),
          _Section(
            title: 'Semantic — Disabled',
            colors: {
              'disabled1': p.disabled1,
              'disabled2': p.disabled2,
              'disabled3': p.disabled3,
              'disabled4': p.disabled4,
            },
          ),
          _Section(
            title: 'Semantic — Opacity',
            colors: {
              'opacity1': p.opacity1,
              'opacity2': p.opacity2,
              'opacity3': p.opacity3,
              'opacity4': p.opacity4,
              'opacity5': p.opacity5,
              'opacity6': p.opacity6,
            },
          ),
          _Section(
            title: 'Semantic — Other',
            colors: {'other1 (error)': p.other1, 'cardBackground': p.cardBackground},
          ),
          const _Section(
            title: 'Raw Palette',
            colors: {
              'deepPlum': Palette.deepPlum,
              'deepPlum10': Palette.deepPlum10,
              'dustyRose': Palette.dustyRose,
              'espresso': Palette.espresso,
              'ivoryWhite': Palette.ivoryWhite,
              'mutedClay': Palette.mutedClay,
              'mutedClay40': Palette.mutedClay40,
              'softLinen': Palette.softLinen,
              'softLinen80': Palette.softLinen80,
              'cardBackgroundColor': Palette.cardBackgroundColor,
              'vibrantRed': Palette.vibrantRed,
              'warmTaupe': Palette.warmTaupe,
              'warmTaupe10': Palette.warmTaupe10,
              'warmTaupe40': Palette.warmTaupe40,
              'white30': Palette.white30,
              'white70': Palette.white70,
              'white80': Palette.white80,
              'white90': Palette.white90,
              'grey40': Palette.grey40,
            },
          ),
        ],
      ),
    );
  }
}

@UseCase(name: 'Colors', type: ColorPaletteShowcase)
Widget buildColorPalette(BuildContext context) => const ColorPaletteShowcase();
