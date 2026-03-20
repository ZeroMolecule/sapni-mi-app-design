import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class TypographyShowcase extends StatelessWidget {
  const TypographyShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).textStyles;
    final palette = Theme.of(context).palette;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StyleRow(
            name: 'h1',
            meta: 'Poppins 600 · 64px',
            style: styles.h1.copyWith(color: palette.text1),
            sample: 'Heading 1',
          ),
          _StyleRow(
            name: 'h2',
            meta: 'Poppins 600 · 51px',
            style: styles.h2.copyWith(color: palette.text1),
            sample: 'Heading 2',
          ),
          _StyleRow(
            name: 'subtitle',
            meta: 'Poppins 500 · 40px',
            style: styles.subtitle.copyWith(color: palette.text1),
            sample: 'Subtitle text',
          ),
          _StyleRow(
            name: 'label',
            meta: 'Poppins 700 · 36px',
            style: styles.label.copyWith(color: palette.text1),
            sample: 'Label text',
          ),
          _StyleRow(
            name: 'emailLabel',
            meta: 'Poppins 500 · 32px',
            style: styles.emailLabel.copyWith(color: palette.text1),
            sample: 'Email label',
          ),
          _StyleRow(
            name: 'message',
            meta: 'Poppins 500 · 36px',
            style: styles.message.copyWith(color: palette.text2),
            sample: 'A longer message body text goes here.',
          ),
          _StyleRow(
            name: 'button',
            meta: 'Poppins 600 · 32px',
            style: styles.button.copyWith(color: palette.primary),
            sample: 'Button label',
          ),
          _StyleRow(
            name: 'indicator',
            meta: 'Poppins 600 · 28px',
            style: styles.indicator.copyWith(color: palette.text1),
            sample: '3 / 10',
          ),
          _StyleRow(
            name: 'decorative',
            meta: 'Caveat 400 · 46px',
            style: styles.decorative.copyWith(color: palette.text3),
            sample: 'Decorative handwriting',
          ),
          _StyleRow(
            name: 'countNumber',
            meta: 'Playfair Display 700 · 320px',
            style: styles.countNumber.copyWith(color: palette.primary, fontSize: 80),
            sample: '5',
          ),
        ],
      ),
    );
  }
}

class _StyleRow extends StatelessWidget {
  const _StyleRow({
    required this.name,
    required this.meta,
    required this.style,
    required this.sample,
  });

  final String name;
  final String meta;
  final TextStyle style;
  final String sample;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 24),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(width: 8),
              Text(meta, style: const TextStyle(fontSize: 11, color: Colors.black38)),
            ],
          ),
          const SizedBox(height: 4),
          Text(sample, style: style),
          const Divider(height: 24),
        ],
      ),
  );
}

@UseCase(name: 'Typography', type: TypographyShowcase)
Widget buildTypography(BuildContext context) => const TypographyShowcase();
