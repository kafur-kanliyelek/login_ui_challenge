import 'package:flutter/material.dart';

class myElevatedButton4 extends StatelessWidget {
  const myElevatedButton4({
    super.key,
    required this.btnText,
    required this.bgColor,
    required this.borderColor,
  });

  final String btnText;
  final Color bgColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    double _fontSize = 20.0;
    double _circularRadius = 12.0;
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(_circularRadius))),
      child: Text(
        btnText,
        style: TextStyle(fontSize: _fontSize),
      ),
    );
  }
}
