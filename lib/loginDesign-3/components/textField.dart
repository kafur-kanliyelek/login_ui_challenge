import 'package:flutter/material.dart';

class myTextField3 extends StatelessWidget {
  const myTextField3({
    super.key,
    required this.labelText,
    this.suffixIcon,
    required this.outlineColor,
  });

  final String labelText;
  final Icon? suffixIcon;
  final Color outlineColor;

  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = new FocusNode();
    double borderRadius = 8.0;
    return TextField(
      focusNode: myFocusNode,
      decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: outlineColor)),
          labelText: labelText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          suffixIcon: suffixIcon),
    );
  }
}
