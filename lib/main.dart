import 'package:flutter/material.dart';
import 'package:login_ui_challenge/Navigation/home.dart';
import 'package:login_ui_challenge/loginDesign-1/login1.dart';
import 'package:login_ui_challenge/loginDesign-2/login2.dart';
import 'package:login_ui_challenge/loginDesign-3/login3.dart';
import 'package:login_ui_challenge/loginDesign-4/login4.dart';
import 'package:login_ui_challenge/loginDesign-5/login5.dart';
import 'package:login_ui_challenge/loginDesign-6/login6.dart';
import 'package:login_ui_challenge/loginDesign-7/login7.dart';
import 'package:login_ui_challenge/loginDesign-8/login8.dart';
import 'package:login_ui_challenge/loginDesign-9/login9.dart';
import 'package:login_ui_challenge/loginDesign-10/login10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login UI Challenge',
      home: const Home(),
    );
  }
}
