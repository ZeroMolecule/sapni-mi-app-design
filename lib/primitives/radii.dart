import 'package:flutter/material.dart';

class Radii {
  const Radii._();

  static const double sm = 5;
  static const double md = 10;
  static const double card = 16;
  static const double lg = 20;
  static const double full = 999;

  static const BorderRadius smAll = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius mdAll = BorderRadius.all(Radius.circular(md));
  static const BorderRadius cardAll = BorderRadius.all(Radius.circular(card));
  static const BorderRadius lgAll = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius fullAll = BorderRadius.all(Radius.circular(full));
}
