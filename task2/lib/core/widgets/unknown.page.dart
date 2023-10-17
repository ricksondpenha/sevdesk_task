import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevdesk_task/features/dashboard/dashboard_page.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404, Unknown Page',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              context.canPop()
                  ? context.pop()
                  : context.goNamed(DashboardPage.routeName);
            },
            child: const Text('Go Back'),
          ),
        )
      ],
    ));
  }
}
