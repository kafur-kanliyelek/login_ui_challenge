import 'package:flutter/material.dart';

class TextButton2 extends StatelessWidget {
  const TextButton2({
    super.key,
    required this.btnText,
    required this.btnColor,
  });

  final String btnText;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          btnText,
          style: TextStyle(color: btnColor),
        ));
  }
}
