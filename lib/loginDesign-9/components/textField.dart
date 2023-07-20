import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myTextField9 extends StatelessWidget {
  const myTextField9({
    super.key,
    this.suffixIcon,
    required this.labelText,
    this.hintColor,
    required this.primaryColor,
    this.keyboardType,
    required this.obscure,
  });
  final IconData? suffixIcon;
  final String labelText;
  final Color? hintColor;
  final Color primaryColor;
  final TextInputType? keyboardType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    UnderlineInputBorder _borderstyle =
        UnderlineInputBorder(borderSide: BorderSide(color: primaryColor));
    double _fontSize = 18;

    return Container(
      child: TextField(
        obscureText: obscure,
        obscuringCharacter: '●',
        keyboardType: keyboardType,
        style: GoogleFonts.jost(
            textStyle: TextStyle(
          fontWeight: FontWeight.bold,
        )),
        cursorColor: primaryColor,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: hintColor, fontSize: _fontSize),
          suffixIcon: Icon(suffixIcon),
          suffixIconColor: primaryColor,
          focusedBorder: _borderstyle,
          enabledBorder: _borderstyle,
        ),
      ),
    );
  }
}
