import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sevdesk_task/features/dashboard/dashboard_page.dart';

import '../../../invoices/view/invoices_page.dart';
import '../../../reciepts/view/reciepts_page.dart';
import '../../../settings/settings_page.dart';

class BottomBarItem {
  final int index;
  final String title;
  final Widget icon;
  final Widget page;
  final String routePath;
  final bool selected;
  final bool empty;

  BottomBarItem({
    required this.index,
    this.title = '',
    required this.icon,
    required this.page,
    required this.routePath,
    this.selected = false,
    this.empty = false,
  });
}

class BottomBar extends StatefulWidget {
  final int initialIndex;

  const BottomBar({
    super.key,
    this.initialIndex = 0,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<BottomBarItem> pages = [
    BottomBarItem(
      index: 0,
      icon: const Icon(Icons.home_outlined),
      title: 'Dashboard',
      page: const DashboardPage(),
      routePath: DashboardPage.routePath,
    ),
    BottomBarItem(
      index: 1,
      icon: const Icon(Icons.task_outlined),
      title: 'Invoices',
      page: const InvoicesPage(),
      routePath: InvoicesPage.routePath,
    ),
    BottomBarItem(
      index: 2,
      title: 'Empty',
      icon: const Icon(Icons.task_outlined),
      page: const SizedBox(),
      routePath: '',
      empty: true,
    ),
    BottomBarItem(
      index: 3,
      icon: const Icon(Icons.receipt_outlined),
      title: 'Reciept',
      page: const RecieptsPage(),
      routePath: RecieptsPage.routePath,
    ),
    BottomBarItem(
      index: 4,
      icon: const Icon(Icons.more_horiz),
      title: 'More',
      page: const SettingsPage(),
      routePath: SettingsPage.routePath,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: pages
                    .map(
                      (e) => e.empty
                          ? const SizedBox()
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  color: e.index == _currentIndex
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).unselectedWidgetColor,
                                  onPressed: () {
                                    context.go(e.routePath);
                                    _currentIndex = e.index;
                                    setState(() {});
                                  },
                                  icon: e.icon,
                                ),
                                Text(
                                  e.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: e.index == _currentIndex
                                              ? Theme.of(context).primaryColor
                                              : Theme.of(context)
                                                  .unselectedWidgetColor),
                                )
                              ],
                            ),
                    )
                    .toList()),
          ));
    });
  }
}
