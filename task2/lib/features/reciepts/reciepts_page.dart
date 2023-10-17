import 'package:flutter/material.dart';

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
          const BottomDrawer(),
        ],
      ),
    );
  }
}
