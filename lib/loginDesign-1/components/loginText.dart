import 'package:flutter/material.dart';

class LogInTextWidget extends StatelessWidget {
  const LogInTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double fontSize = 24;
    String logintext = 'Log In';
    return Text(
      logintext,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
