import 'package:flutter/material.dart';


class MyCloseButton extends StatelessWidget {
  const MyCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double iconSize = 36;
    Color iconColor = Colors.black;

    return IconButton(
        iconSize: iconSize,
        onPressed: () {},
        icon: Icon(
          Icons.close,
          color: iconColor,
        ));
  }
}
