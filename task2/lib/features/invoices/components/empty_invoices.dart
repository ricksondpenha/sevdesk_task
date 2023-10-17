import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevdesk_task/features/invoices/create_invoice_page.dart';

class EmptyInvoices extends StatelessWidget {
  const EmptyInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 80),
          decoration: BoxDecoration(
              color: Colors.grey[800], borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.receipt_long_rounded,
                size: 120,
              ),
              const Row(),
              Text(
                'Invoice',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Here you will see the open claims to your customers in the future',
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.goNamed(CreateInvoicePage.routeName);
                },
                child: const Text('Create invoice'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
