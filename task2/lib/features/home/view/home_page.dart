import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevdesk_task/features/home/view/components/bottom_bar.dart';
import 'package:sevdesk_task/features/invoices/create_invoice_page.dart';

class HomePage extends StatelessWidget {
  final Widget page;

  const HomePage({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(CreateInvoicePage.routeName);
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomBar(),
      extendBody: true,
    );
  }
}
