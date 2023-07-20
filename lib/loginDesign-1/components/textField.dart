import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.labelText,
  });
  final labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: null,
      decoration: InputDecoration(labelText: labelText),
    );
  }
}
