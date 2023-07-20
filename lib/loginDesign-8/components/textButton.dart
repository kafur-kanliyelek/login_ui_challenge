import 'package:flutter/material.dart';

class myTextButton8 extends StatelessWidget {
  const myTextButton8({
    super.key,
    required this.btnText,
    required this.textColor,
  });

  final String btnText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    double fontSize = 16.0;
    return TextButton(
        onPressed: () {},
        child: Text(
          btnText,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ));
  }
}
