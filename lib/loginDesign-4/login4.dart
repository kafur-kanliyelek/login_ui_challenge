import 'package:flutter/material.dart';

import 'components/elevatedButton.dart';
import 'components/textButtonIcon.dart';
import 'components/textField.dart';

class LoginPage4 extends StatelessWidget {
  const LoginPage4({super.key});

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    double _paddingValue = 20.0;
    double _containerHeight = 300.0;
    double _fontSize = 6.0;
    double _elevationValue = 0;
    String _assetPath = 'assets/png/arkaPlan.png';
    return SafeArea(
      child: Scaffold(
        backgroundColor: _projectColors.black,
        appBar: AppBar(
          elevation: _elevationValue,
          backgroundColor: _projectColors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.all(_paddingValue),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Visibility(
                visible: !isKeyboard,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(image: AssetImage(_assetPath))),
                  height: _containerHeight,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _projectText.hi,
                  style: TextStyle(
                      color: _projectColors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: _fontSize * 8),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  _projectText.pleaseLogin,
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: _fontSize * 3,
                      color: _projectColors.white),
                ),
              ),
              Spacer(),
              myTextField4(
                icon: _projectIcons.email,
                labelText: _projectText.email,
                iconColor: _projectColors.secondWhite,
                fillColor: _projectColors.secondBlack,
              ),
              Spacer(),
              myTextField4(
                  labelText: _projectText.password,
                  icon: _projectIcons.password,
                  iconColor: _projectColors.secondWhite,
                  fillColor: _projectColors.secondBlack),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myTextIconBtn4(
                    btntext: _projectText.rememberMe,
                    btnIcon: _projectIcons.circle,
                    iconColor: _projectColors.secondWhite,
                  ),
                  myTextIconBtn4(
                    btntext: _projectText.forgetPassword,
                    btnIcon: _projectIcons.circle,
                    iconColor: _projectColors.secondWhite,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  myElevatedButton4(
                      btnText: _projectText.signIn,
                      bgColor: _projectColors.green,
                      borderColor: _projectColors.green),
                  myElevatedButton4(
                      btnText: _projectText.signInWithEmail,
                      bgColor: _projectColors.transparent,
                      borderColor: _projectColors.white)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _projectColors {
  static Color green = Color(0xFF27ae60);
  static Color black = Colors.black;
  static Color secondBlack = Color(0xFF1f1f1f);
  static Color transparent = Colors.transparent;
  static Color white = Colors.white;
  static Color secondWhite = Colors.white60;
}

class _projectText {
  static String hi = 'Hi, Fellas';
  static String pleaseLogin = 'Please login to continue';
  static String email = 'Enter your email';
  static String password = 'Enter your password';
  static String rememberMe = 'Remember me ';
  static String forgetPassword = 'Forget Password';
  static String signIn = 'Sign in';
  static String signInWithEmail = 'Sign in with email';
}

class _projectIcons {
  static IconData email = Icons.mail_outline_rounded;
  static IconData password = Icons.lock_outline_rounded;
  static IconData circle = Icons.circle_outlined;
}
