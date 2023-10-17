import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String prefix;
  final String hint;
  const TextInput({
    super.key,
    required this.prefix,
    this.hint = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            prefix,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        hintText: hint,
      ),
      textAlign: TextAlign.right,
    );
  }
}
