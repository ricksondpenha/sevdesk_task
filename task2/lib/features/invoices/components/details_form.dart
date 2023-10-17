import 'package:flutter/material.dart';
import 'package:sevdesk_task/core/widgets/text_input.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'DETAILS',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          const Column(
            children: [
              TextInput(prefix: 'Invoice no.'),
              TextInput(prefix: 'Subject'),
              TextInput(prefix: 'Invoice date'),
              TextInput(prefix: 'Delivery date'),
              TextInput(prefix: 'Time to pay'),
              TextInput(prefix: 'Reference'),
            ],
          ),
        ],
      ),
    );
  }
}
