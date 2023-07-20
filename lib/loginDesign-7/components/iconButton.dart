import 'package:flutter/material.dart';

class myIconButton7 extends StatelessWidget {
  const myIconButton7({
    super.key,
    required this.btnIcon,
    this.iconColor,
  });

  final IconData btnIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 30,
        onPressed: () {},
        icon: Icon(
          btnIcon,
          color: iconColor,
        ));
  }
}
