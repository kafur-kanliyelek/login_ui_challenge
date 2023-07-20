import 'package:flutter/material.dart';


class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.buttonText,
    required this.btnTextColor,
    required this.btnBgColor,
    required this.btnOpacity,
    required this.btnBorderSide,
  });
  final String buttonText;
  final Color btnTextColor;
  final Color btnBgColor;
  final double btnOpacity;
  final double btnBorderSide;

  @override
  Widget build(BuildContext context) {
    double radiusCirularValue = 10;
    Color btnBorderColor = Colors.blueAccent;
    Color transparentColor = Colors.transparent;
    double elevationValue = 5;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: elevationValue,
            backgroundColor: btnBgColor,
            shadowColor: transparentColor.withOpacity(btnOpacity),
            side: BorderSide(width: btnBorderSide, color: btnBorderColor),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radiusCirularValue))),
        child: Text(
          buttonText,
          style: TextStyle(color: btnTextColor),
        ),
      ),
    );
  }
}
