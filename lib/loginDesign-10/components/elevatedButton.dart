import 'package:flutter/material.dart';

class myElevatedButton10 extends StatelessWidget {
  const myElevatedButton10({
    super.key,
    required this.btnText,
    required this.btnColor,
    required this.textColor,
  });
  final String btnText;
  final Color btnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: btnColor, shape: StadiumBorder()),
          child: Text(
            btnText,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 24),
          )),
    );
  }
}
