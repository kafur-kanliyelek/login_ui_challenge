import 'package:flutter/material.dart';

class myIconButton10 extends StatelessWidget {
  const myIconButton10({
    super.key,
    required this.icon,
    this.iconColor,
  });
  final IconData icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: iconColor,
        ));
  }
}
