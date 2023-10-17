import 'package:flutter/material.dart';

class ChooseContactTile extends StatelessWidget {
  const ChooseContactTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'CONTACT',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        ListTile(
          onTap: () {},
          title: const Text('Choose Contact'),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 12,
          ),
          tileColor: Colors.grey[800],
        )
      ],
    );
  }
}
