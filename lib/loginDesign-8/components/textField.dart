import 'package:flutter/material.dart';

class myTextField8 extends StatelessWidget {
  myTextField8({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.canColor,
    required this.hintText,
    required this.textColor,
  });

  final IconData icon;
  final Color iconColor;
  final Color canColor;
  final String hintText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    double borderRadius = 30;
    double canHeight = 57;
    double canWidth = 57;
    double iconSize = 30;
    double borderOpacity = 0.38;
    double fieldOpacity = 0.24;

    OutlineInputBorder borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(color: textColor.withOpacity(borderOpacity)));

    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        fillColor: textColor.withOpacity(fieldOpacity),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: textColor,
        ),
        prefixIcon: Container(
          height: canHeight,
          width: canWidth,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: canColor,
          ),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
        enabledBorder: borderStyle,
        focusedBorder: borderStyle,
      ),
    );
  }
}
