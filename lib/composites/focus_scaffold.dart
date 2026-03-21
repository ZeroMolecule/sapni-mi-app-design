import 'package:flutter/widgets.dart';
import 'package:sapnimi_design/primitives/spacing.dart';
import 'package:sapnimi_design/widgets/gradient_scaffold.dart';

class FocusScaffold extends StatelessWidget {
  const FocusScaffold({
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: Spacing.section, vertical: Spacing.xxxl),
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) => GradientScaffold(
    child: Padding(
      padding: padding,
      child: SizedBox.expand(child: child),
    ),
  );
}
