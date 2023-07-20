import 'package:flutter/material.dart';

class myTextField4 extends StatelessWidget {
  const myTextField4({
    super.key,
    required this.labelText,
    required this.icon,
    required this.iconColor,
    required this.fillColor,
  });

  final String labelText;
  final IconData icon;
  final Color iconColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    double _circularRadiusSize = 12.0;
    return TextField(
      cursorColor: iconColor,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: fillColor),
            borderRadius: BorderRadius.circular(_circularRadiusSize)),
        filled: true,
        fillColor: fillColor,
        labelText: labelText,
        labelStyle: TextStyle(color: iconColor),
        prefixIcon: Icon(
          icon,
          color: iconColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(_circularRadiusSize),
        ),
      ),
    );
  }
}
