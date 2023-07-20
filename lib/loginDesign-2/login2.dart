import 'package:flutter/material.dart';

import 'components/elevatedButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    double generalPadding = 20.0;
    Icon rightIcon = Icon(Icons.lock_outline_rounded);
    double myMediaQuerySize = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: _ProjectColors.projectBlue, size: 36),
        toolbarHeight: (myMediaQuerySize / 10) * 3,
        leading: Icon(Icons.chevron_left),
        title: Text(
          _ProjectText.login,
          style: TextStyle(color: _ProjectColors.projectBlue),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: generalPadding, right: generalPadding),
        child: Column(
          children: [
            Column(
              children: [
                textField2(
                  labelText: _ProjectText.emailAdress,
                  labelColor: _ProjectColors.projecthintText,
                ),
                textField2(
                  labelText: _ProjectText.password,
                  labelColor: _ProjectColors.projecthintText,
                  rightIcon: rightIcon,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: null,
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => _ProjectColors.projectBlueMtr),
                        ),
                        Text(
                          _ProjectText.rememberMe,
                          style:
                              TextStyle(color: _ProjectColors.projecthintText),
                        ),
                      ],
                    ),
                    TextButton2(
                        btnText: _ProjectText.forget,
                        btnColor: _ProjectColors.projectBlue),
                  ],
                ),
                myElevatedButton2(
                    btnColor: _ProjectColors.projectBlue,
                    btnText: _ProjectText.login),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: (myMediaQuerySize / 100) * (15),
                bottom: (myMediaQuerySize / 100) * (15),
              ),
              child: TextButton2(
                  btnText: _ProjectText.signUp,
                  btnColor: _ProjectColors.projectBlue),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectColors {
  static Color projectBlue = const Color(0xFF24ABC9);
  static Color projectBlueMtr = const Color(0xFF24ABC9);
  static Color projecthintText = const Color(0xFFD2D2D2);
}

class _ProjectText {
  static String password = 'Password';
  static String emailAdress = 'Enter your email adress';
  static String rememberMe = 'Remember Me';
  static String forget = 'Forget';
  static String login = 'LOG IN';
  static String signUp = 'Already have an account? Sign up';
}
