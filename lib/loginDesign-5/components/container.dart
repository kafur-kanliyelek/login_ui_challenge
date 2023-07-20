import 'package:flutter/material.dart';

class myContainer5 extends StatelessWidget {
  const myContainer5({
    super.key,
    required this.canColor,
    this.canrborderRadius,
    this.canMargin,
    required this.canHeight,
    required this.canWidth,
    this.child,
    this.canGradient,
  });
  final Color canColor;
  final BorderRadius? canrborderRadius;
  final EdgeInsetsGeometry? canMargin;
  final double canHeight;
  final double canWidth;
  final Gradient? canGradient;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: canrborderRadius,
          color: canColor,
          gradient: canGradient),
      margin: canMargin,
      width: canWidth,
      height: canHeight,
      child: child,
    );
  }
}
