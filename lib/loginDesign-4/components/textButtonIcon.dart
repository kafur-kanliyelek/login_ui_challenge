import 'package:flutter/material.dart';

class myTextIconBtn4 extends StatelessWidget {
  const myTextIconBtn4({
    super.key,
    required this.btntext,
    required this.btnIcon,
    required this.iconColor,
  });

  final String btntext;
  final IconData btnIcon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: TextButton.styleFrom(iconColor: iconColor),
        onPressed: () {},
        icon: Icon(btnIcon),
        label: Text(
          btntext,
          style: TextStyle(color: iconColor),
        ));
  }
}
