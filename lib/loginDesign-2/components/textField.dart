import 'package:flutter/material.dart';

class textField2 extends StatelessWidget {
  textField2({
    super.key,
    required this.labelText,
    required this.labelColor,
    this.rightIcon,
  });
  final String labelText;
  final Icon? rightIcon;
  final labelColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor),
          suffixIcon: rightIcon),
    );
  }
}
