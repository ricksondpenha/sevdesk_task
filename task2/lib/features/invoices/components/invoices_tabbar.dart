import 'package:flutter/material.dart';

class InvoicesTabbar extends StatelessWidget {
  const InvoicesTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      isScrollable: true, // Required
      unselectedLabelColor: Colors.white30, // Other tabs color
      labelPadding: EdgeInsets.symmetric(horizontal: 30), // Space between tabs
      indicator: UnderlineTabIndicator(
        borderSide:
            BorderSide(color: Colors.white, width: 2), // Indicator height
        insets: EdgeInsets.symmetric(horizontal: 48), // Indicator width
      ),
      tabs: [
        Tab(text: 'Total Investment'),
        Tab(text: 'Your Earnings'),
        Tab(text: 'Current Balance'),
      ],
    );
  }
}
