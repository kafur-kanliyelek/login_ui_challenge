import 'package:flutter/material.dart';

class myTextField7 extends StatelessWidget {
  const myTextField7({
    super.key,
    required this.hintText,
    required this.hintColor,
    required this.borderColor,
  });

  final String hintText;
  final Color hintColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor),
          filled: true,
          fillColor: Colors.transparent,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: borderColor, width: 1.0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: borderColor, width: 1.0))),
    );
  }
}
