import 'package:flutter/material.dart';

class myTextButton6 extends StatelessWidget {
  const myTextButton6({
    super.key,
    required this.btnText,
    this.textColor,
    this.fontFamily,
  });

  final String btnText;
  final Color? textColor;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        btnText,
        style: TextStyle(
          color: textColor,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
