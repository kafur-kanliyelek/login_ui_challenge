import 'package:flutter/material.dart';

class myTextButton10 extends StatelessWidget {
  const myTextButton10({
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
