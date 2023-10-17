import 'package:flutter/material.dart';
import 'package:sevdesk_task/features/invoices/components/details_form.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      maxChildSize: 0.9,
      minChildSize: 0.2,
      expand: true,
      snap: true,
      snapSizes: const [0.5],
      builder: (BuildContext context, ScrollController scrollController) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                  child: Align(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  height: 8,
                  width: 48,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(100)),
                ),
              )),
              SliverToBoxAdapter(
                child: Padding(
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
              ),
              SliverList.list(
                children: const [DetailsForm()],
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: const Text('Delete Draft'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text('Complete'),
                            ),
                          ],
                        ))
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
