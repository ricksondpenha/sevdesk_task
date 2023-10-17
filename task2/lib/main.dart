import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/themes.dart';
import 'services/navigation_service.dart';

void main() {
  runApp(const ProviderScope(
    child: RootApp(),
  ));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final router = ref.watch(appRouter);
      return MaterialApp.router(
        title: 'SevDesk',
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ref.watch(themeProvider),
      );
    });
  }
}
