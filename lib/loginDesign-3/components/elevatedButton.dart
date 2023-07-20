import 'package:flutter/material.dart';

class myElevatedButton3 extends StatelessWidget {
  const myElevatedButton3({
    super.key,
    required this.btnText,
    required this.btnColor,
  });

  final String btnText;
  final Color btnColor;

  @override
  Widget build(BuildContext context) {
    double _borderRadius = 8.0;
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(btnText),
          style: ElevatedButton.styleFrom(
              backgroundColor: btnColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(_borderRadius))),
        ));
  }
}
