import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevdesk_task/features/home/view/components/bottom_bar.dart';
import 'package:sevdesk_task/features/invoices/create_invoice_page.dart';

class HomePage extends StatelessWidget {
  final Widget page;

  const HomePage({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;
    return Scaffold(
      body: page,
      floatingActionButton: showFab
          ? FloatingActionButton(
              onPressed: () {
                context.pushNamed(CreateInvoicePage.routeName);
              },
              child: const Icon(Icons.add),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
      extendBody: true,
    );
  }
}
