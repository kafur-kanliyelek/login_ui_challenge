import 'package:flutter/material.dart';

class myTextButton3 extends StatelessWidget {
  const myTextButton3({
    super.key,
    required this.btnText,
    required this.textColor,
  });

  final String btnText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          btnText,
          style: TextStyle(color: textColor),
        ));
  }
}
