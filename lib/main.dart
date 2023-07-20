import 'package:flutter/material.dart';
import 'package:login_ui_challenge/loginDesign-1/login1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login UI Challenge',
      home: const LoginPage1(),
    );
  }
}
