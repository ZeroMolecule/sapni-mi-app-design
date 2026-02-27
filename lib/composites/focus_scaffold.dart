import 'package:flutter/widgets.dart';
import 'package:sapnimi_design/widgets/gradient_scaffold.dart';

class FocusScaffold extends StatelessWidget {
  const FocusScaffold({
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 60, vertical: 48),
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
