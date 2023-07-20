import 'package:flutter/material.dart';

class myElevatedButton extends StatelessWidget {
  const myElevatedButton({
    super.key,
    required this.btnText,
    required this.textColor,
    required this.bgColor,
    required this.btnWidth,
  });

  final String btnText;
  final Color textColor;
  final Color bgColor;
  final double btnWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: btnWidth,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              shape:
                  StadiumBorder(side: BorderSide(color: textColor, width: 2))),
          child: Text(
            btnText,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
