import 'package:flutter/material.dart';

class DateInput extends StatelessWidget {
  final String prefix;
  final String hint;
  const DateInput({
    super.key,
    required this.prefix,
    this.hint = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(DateTime.now().year - 1),
          lastDate: DateTime(DateTime.now().year + 1)),
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
