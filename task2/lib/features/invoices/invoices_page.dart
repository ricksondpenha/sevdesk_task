import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevdesk_task/features/invoices/components/invoices_list.dart';
import 'package:sevdesk_task/features/invoices/create_invoice_page.dart';

class InvoicesPage extends StatelessWidget {
  const InvoicesPage({super.key});

  static const String routeName = 'invoices-page';
  static const String routePath = '/invoices';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Invoices'),
        actions: _buildAppBarActions(context),
      ),
      body: const InvoicesList(),
    );
  }

  List<Widget> _buildAppBarActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.tune_rounded),
      ),
      IconButton(
        onPressed: () {
          context.pushNamed(CreateInvoicePage.routeName);
        },
        icon: const Icon(Icons.add),
      ),
    ];
  }
}
