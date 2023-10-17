import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sevdesk_task/features/invoices/view/components/invoice_tile.dart';
import 'package:sevdesk_task/features/invoices/model/invoice.dart';
import 'package:sevdesk_task/features/invoices/view/state/invoices_list_state.dart';

class InvoicesList extends ConsumerWidget {
  const InvoicesList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return DefaultTabController(
      length: InvoiceState.values.length,
      child: Scaffold(
          appBar: TabBar(
            isScrollable: true,
            tabs: InvoiceState.values
                .map((state) => Tab(
                      text: state.name.capitalize,
                    ))
                .toList(),
            onTap: (index) => ref
                .read(selectedInvoiceStateProvider.notifier)
                .state = InvoiceState.values[index],
          ),
          body: Consumer(builder: (context, ref, child) {
            final invoicesList = ref.watch(invoicesProvider);
            return ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) =>
                    InvoiceTile(invoice: invoicesList[index]),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: invoicesList.length);
          })),
    );
  }
}
