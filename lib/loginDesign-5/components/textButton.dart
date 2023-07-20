import 'package:flutter/material.dart';

class myTextButton5 extends StatelessWidget {
  const myTextButton5({
    super.key,
    required this.btnText,
    required this.textColor,
    this.btnAlign = Alignment.center,
  });

  final String btnText;
  final Color textColor;
  final AlignmentGeometry btnAlign;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: btnAlign,
        child: TextButton(
          onPressed: () {},
          child: Text(
            btnText,
            style: TextStyle(color: textColor),
          ),
        ));
  }
}
