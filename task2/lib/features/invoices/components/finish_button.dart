import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              context.pop();
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('FINISH'),
            ),
          ),
        ),
      ),
    );
  }
}
