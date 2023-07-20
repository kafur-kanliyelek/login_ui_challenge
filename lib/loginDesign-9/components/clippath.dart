import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();

    Offset controlPoint = Offset(0, h * 0.85);
    Offset endPoint = Offset(40, h * 0.87);

    Offset controlPoint2 = Offset(w, h);
    Offset endPoint2 = Offset(w, h - 30);

    path.lineTo(0, h * 0.8 - 20);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(w * 0.9, h);
    path.quadraticBezierTo(
        controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);

    path.lineTo(w, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => false;
}
