import 'package:flutter/material.dart';

class myTextField6 extends StatelessWidget {
  const myTextField6({
    super.key,
    required this.hintText,
    required this.fillColor,
    this.fontFamily,
    this.hintColor,
  });

  final String hintText;
  final Color fillColor;
  final String? fontFamily;
  final Color? hintColor;
  @override
  Widget build(BuildContext context) {
    double circularRadius = 8.0;
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: fontFamily, color: hintColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(circularRadius)))),
    );
  }
}
