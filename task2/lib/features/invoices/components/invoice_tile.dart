import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/invoice.dart';

class InvoiceTile extends StatelessWidget {
  const InvoiceTile({
    super.key,
    required this.invoice,
  });

  final Invoice invoice;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(invoice.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(invoice.id),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Chip(
                shape: const StadiumBorder(),
                label: Text(invoice.state.name.capitalize)),
          )
        ],
      ),
      trailing: Column(
        children: [
          Text(
            DateFormat('MMM dd, yyyy').format(invoice.createdAt),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text('${invoice.amount} EUR'),
        ],
      ),
    );
  }
}
