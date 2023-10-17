import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../dashboard/dashboard_page.dart';
import '../../../invoices/invoices_page.dart';
import '../../../reciepts/reciepts_page.dart';
import '../../../settings/settings_page.dart';
import '../../model/bottombar_item.dart';

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
    icon: const Icon(Icons.receipt_outlined),
    title: 'Reciept',
    page: const RecieptsPage(),
    routePath: RecieptsPage.routePath,
  ),
  BottomBarItem(
    index: 3,
    icon: const Icon(Icons.more_horiz),
    title: 'More',
    page: const SettingsPage(),
    routePath: SettingsPage.routePath,
  ),
];

final navbarState = StateProvider<BottomBarItem>((ref) => pages.first);
