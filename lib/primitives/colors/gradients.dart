import 'package:flutter/widgets.dart';

class Gradients {
  static const LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFFFF0), Color(0xFFF5E6E0), Color(0xFFE8E5E1)],
    stops: [0.0, 0.3536, 0.7071],
  );
}
