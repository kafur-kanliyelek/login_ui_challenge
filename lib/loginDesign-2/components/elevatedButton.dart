import 'package:flutter/material.dart';

class myElevatedButton2 extends StatelessWidget {
  const myElevatedButton2({
    super.key,
    required this.btnColor,
    required this.btnText,
  });
  final Color btnColor;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: btnColor, shape: StadiumBorder()),
            child: Text(btnText)));
  }
}
