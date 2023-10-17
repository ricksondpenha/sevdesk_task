import 'package:flutter/widgets.dart';

class BottomBarItem {
  final int index;
  final String title;
  final Widget icon;
  final Widget page;
  final String routePath;
  final bool selected;

  BottomBarItem({
    required this.index,
    this.title = '',
    required this.icon,
    required this.page,
    required this.routePath,
    this.selected = false,
  });
}
