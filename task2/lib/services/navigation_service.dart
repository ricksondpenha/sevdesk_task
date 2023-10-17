import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/widgets/unknown.page.dart';
import '../features/dashboard/dashboard_page.dart';
import '../features/home/view/home_page.dart';
import '../features/invoices/view/create_invoice_page.dart';
import '../features/invoices/view/invoices_page.dart';
import '../features/reciepts/view/reciepts_page.dart';
import '../features/settings/settings_page.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/',
      navigatorKey: rootNavigatorKey,
      errorBuilder: (context, state) => const UnknownPage(),
      redirect: (context, state) {
        // NOTE: initial startup navigation logic is to be implemented here
        return null;
      },
      routes: [
        GoRoute(
          name: CreateInvoicePage.routeName,
          path: CreateInvoicePage.routePath,
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => const CreateInvoicePage(),
        ),
        ShellRoute(
            navigatorKey: shellNavigatorKey,
            pageBuilder: (context, state, child) => CustomTransitionPage(
                  child: child,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(
                    opacity: animation,
                    child: HomePage(page: child),
                  ),
                ),
            routes: [
              GoRoute(
                name: DashboardPage.routeName,
                path: DashboardPage.routePath,
                pageBuilder: (context, state) => CustomTransitionPage(
                    child: const DashboardPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child)),
              ),
              GoRoute(
                name: InvoicesPage.routeName,
                path: InvoicesPage.routePath,
                pageBuilder: (context, state) => CustomTransitionPage(
                    child: const InvoicesPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child)),
              ),
              GoRoute(
                name: RecieptsPage.routeName,
                path: RecieptsPage.routePath,
                pageBuilder: (context, state) => CustomTransitionPage(
                    child: const RecieptsPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child)),
              ),
              GoRoute(
                name: SettingsPage.routeName,
                path: SettingsPage.routePath,
                pageBuilder: (context, state) => CustomTransitionPage(
                    child: const SettingsPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child)),
              ),
            ]),
      ],
    );
  },
);
