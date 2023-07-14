import 'package:flutter/material.dart';

enum TabItem {
  red(Colors.red),
  green(Colors.green),
  blue(Colors.blue),
  teal(Colors.teal);

  const TabItem(this.color);
  final MaterialColor color;
}
