import 'package:flutter/material.dart';

class myTextButton7 extends StatelessWidget {
  const myTextButton7({
    super.key,
    required this.btnText,
    this.textColor,
  });
  final String btnText;
  final Color? textColor;

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
