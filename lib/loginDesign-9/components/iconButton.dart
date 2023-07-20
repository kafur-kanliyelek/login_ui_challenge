import 'package:flutter/material.dart';

class myIconButton9 extends StatelessWidget {
  const myIconButton9({
    super.key,
    required this.icon,
    this.iconColor,
    this.canColor,
  });

  final IconData icon;
  final Color? iconColor;
  final Color? canColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: canColor, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color: iconColor,
        ));
  }
}
