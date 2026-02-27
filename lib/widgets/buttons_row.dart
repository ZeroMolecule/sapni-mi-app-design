import 'package:flutter/material.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({required this.buttons, super.key});

  final List<Button> buttons;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    spacing: 12,
    children: [
      for (final button in buttons)
        Flexible(
          child: ConstrainedBox(constraints: const BoxConstraints(minWidth: 200), child: button),
        ),
    ],
  );
}
