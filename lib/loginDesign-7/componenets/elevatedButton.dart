import 'package:flutter/material.dart';

class myElevatedButton7 extends StatelessWidget {
  const myElevatedButton7({
    super.key,
    required this.btnText,
    this.fontFamily,
    required this.btnGradientColor1,
    required this.btnGradientColor2,
  });

  final String btnText;
  final String? fontFamily;
  final Color btnGradientColor1;
  final Color btnGradientColor2;

  @override
  Widget build(BuildContext context) {
    Color transparent = Colors.transparent;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          tileMode: TileMode.clamp,
          begin: Alignment(0, -1),
          end: Alignment(-0.2, 1),
          colors: [btnGradientColor1, btnGradientColor2],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: transparent,
          shadowColor: transparent,
        ),
        child: Text(
          btnText,
          style: TextStyle(fontFamily: fontFamily, fontSize: 32),
        ), //google fonts lunasima
      ),
    );
  }
}
