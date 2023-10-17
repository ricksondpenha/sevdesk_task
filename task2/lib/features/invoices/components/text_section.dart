import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final String content;
  const TextSection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        Container(
          color: Colors.grey[800],
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  content,
                  style: const TextStyle(height: 1.5),
                ),
              )),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
