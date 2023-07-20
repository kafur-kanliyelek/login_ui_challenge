import 'package:flutter/material.dart';

class myLoginWidget5 extends StatelessWidget {
  const myLoginWidget5({
    super.key,
    required this.screenWidth,
    required this.loginIcon,
    required this.alignIcon,
    required this.iconColor,
    this.iconSize,
    this.canHeight,
  });

  final double screenWidth;
  final IconData loginIcon;
  final AlignmentGeometry alignIcon;
  final Color iconColor;
  final double? iconSize;
  final double? canHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: alignIcon, children: [
      Container(
        width: screenWidth * 0.35,
        height: canHeight,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.fromBorderSide(BorderSide(
            color: iconColor,
            width: 5,
            strokeAlign: BorderSide.strokeAlignOutside,
          )),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Transform.scale(
          scale: 1.3,
          child: IconButton(
            alignment: alignIcon,
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              loginIcon,
            ),
            color: iconColor,
            iconSize: iconSize,
          ),
        ),
      ),
    ]);
  }
}
