import 'package:flutter/material.dart';

class myElevatedButton6 extends StatelessWidget {
  const myElevatedButton6({
    super.key,
    required this.btnText,
    this.btnColor,
    this.fontFamily,
  });

  final String btnText;
  final Color? btnColor;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    double btnHeight = 50.0;
    double fontSize = 25.0;
    return SizedBox(
      width: double.infinity,
      height: btnHeight,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: btnColor,
        ),
        child: Text(
          btnText,
          style: TextStyle(fontFamily: fontFamily, fontSize: fontSize),
        ),
      ),
    );
  }
}
