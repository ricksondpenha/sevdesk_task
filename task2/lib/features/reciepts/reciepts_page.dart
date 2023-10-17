import 'package:flutter/material.dart';

import '../invoices/components/details_form.dart';
import 'components/bottom_drawer.dart';

class RecieptsPage extends StatelessWidget {
  const RecieptsPage({super.key});

  static const String routeName = 'reciepts-page';
  static const String routePath = '/reciepts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black26, BlendMode.darken),
                    image: AssetImage('assets/img/invoice_scan.png'))),
          ),
          BottomDrawer(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rechnungsinformationen eintragen',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Du kanst die rechnung im Hintergrunf vergrößen und bewegen.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              DetailsForm(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text('Delete Draft'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Complete'),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 120,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
