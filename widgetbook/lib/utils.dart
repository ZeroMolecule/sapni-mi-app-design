import 'package:flutter/material.dart';

enum SapnimiIcon {
  arrowRight(Icons.arrow_right),
  videocam(Icons.videocam),
  save(Icons.save),
  refresh(Icons.refresh),
  home(Icons.home),
  search(Icons.search),
  settings(Icons.settings),
  profile(Icons.person),
  notifications(Icons.notifications);

  const SapnimiIcon(this.iconData);

  final IconData iconData;
}
