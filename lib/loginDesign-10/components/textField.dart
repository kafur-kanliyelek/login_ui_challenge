import 'package:flutter/material.dart';

class myTextField10 extends StatelessWidget {
  const myTextField10({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.color,
    this.keyboardType,
    required this.obscure,
  });

  final String labelText;
  final IconData? suffixIcon;
  final Color? color;
  final TextInputType? keyboardType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    Color underlineColor = Colors.black;
    double fontSize = 18.0;
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscure,
      obscuringCharacter: '●',
      style: TextStyle(color: color),
      cursorColor: color,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
            color: color, fontSize: fontSize, fontWeight: FontWeight.w600),
        suffixIcon: Icon(suffixIcon),
        suffixIconColor: color,
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: underlineColor)),
      ),
    );
  }
}
