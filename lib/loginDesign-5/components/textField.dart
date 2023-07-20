import 'package:flutter/material.dart';

class myTextField5 extends StatelessWidget {
  const myTextField5({
    super.key,
    required this.labelText,
    required this.labelColor,
    required this.prefixIcon,
    required this.prefixIconColor,
  });

  final String labelText;
  final Color labelColor;
  final IconData prefixIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    double _circularRadius = 30;
    return TextField(
      enabled: true,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: labelColor),
          prefixIcon: Icon(prefixIcon),
          prefixIconColor: prefixIconColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_circularRadius),
              borderSide: BorderSide(color: prefixIconColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_circularRadius),
              borderSide: BorderSide(color: prefixIconColor))),
    );
  }
}
