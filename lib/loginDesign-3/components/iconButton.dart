import 'package:flutter/material.dart';

class myIconButton3 extends StatelessWidget {
  const myIconButton3({
    super.key,
    required this.btnIcon,
    required this.btnColor,
    this.size = 60.0,
  });

  final IconData? btnIcon;
  final Color btnColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: btnColor,
      onPressed: () {},
      icon: Icon(
        btnIcon,
        color: btnColor,
        size: size,
      ),
    );
  }
}
