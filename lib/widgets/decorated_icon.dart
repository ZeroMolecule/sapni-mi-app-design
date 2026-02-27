import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class DecoratedIcon extends StatelessWidget {
  const DecoratedIcon({required this.icon, super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    spacing: 12,
    children: [
      const _Divider(),
      _Icon(icon: icon, size: 60),
      const _Divider(),
    ],
  );
}

class _Icon extends StatelessWidget {
  const _Icon({required this.icon, required this.size});

  final double size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox.square(
      dimension: size,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned.fill(
            child: Icon(icon, size: size, color: theme.palette.opacity2),
          ),
          Icon(icon, size: size * (4 / 6), color: theme.palette.primary),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) =>
      SizedBox(width: 48, child: Divider(height: 1, color: Palette.of(context).opacity2));
}
