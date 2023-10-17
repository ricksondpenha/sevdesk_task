import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../state/bottom_bar_state.dart';

class BottomBar extends StatelessWidget {
  final int initialIndex;

  const BottomBar({
    super.key,
    this.initialIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.blueGrey,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: pages
                .map(
                  (e) => IconButton(
                    onPressed: () {
                      context.go(e.routePath);
                      ref.read(navbarState.notifier).update((state) => e);
                    },
                    icon: e.icon,
                  ),
                )
                .toList()),
      );
    });
  }
}

class BottomBarItem extends StatelessWidget {
  final int index;
  final String title;
  final Widget icon;
  final Widget page;
  final String routePath;
  final bool selected;

  const BottomBarItem({
    super.key,
    required this.index,
    required this.title,
    required this.icon,
    required this.page,
    required this.routePath,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
