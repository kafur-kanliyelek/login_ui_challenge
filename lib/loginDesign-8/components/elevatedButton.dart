import 'package:flutter/material.dart';

class myElevatedButton8 extends StatelessWidget {
  const myElevatedButton8({
    super.key,
    required this.btnText,
    required this.btnColor,
    required this.textColor,
  });
  final String btnText;
  final Color btnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    double btnHeight = 50.0;
    double fontSize = 18.0;
    return SizedBox(
      width: double.infinity,
      height: btnHeight,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: btnColor),
        child: Text(
          btnText,
          style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
