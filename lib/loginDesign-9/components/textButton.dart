import 'package:flutter/material.dart';

class myTextButton9 extends StatelessWidget {
  const myTextButton9({
    super.key,
    required this.btnText,
    required this.alignment,
    this.textColor,
  });

  final String btnText;
  final AlignmentGeometry alignment;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Align(
            alignment: alignment,
            child: Text(
              btnText,
              style: TextStyle(color: textColor),
            )));
  }
}
