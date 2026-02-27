import 'package:flutter/widgets.dart';
import 'package:sapnimi_design/sapnimi_design.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    required this.child,
    this.padding = const EdgeInsets.all(40),
    this.clipBehavior = Clip.hardEdge,
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      boxShadow: Shadows.cardDropdown,
      color: Palette.of(context).cardBackground,
      borderRadius: BorderRadius.circular(5),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      clipBehavior: clipBehavior,
      child: Padding(padding: padding, child: child),
    ),
  );
}
