import 'package:flutter/material.dart';

import 'components/elevatedButton.dart';
import 'components/iconButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage3 extends StatelessWidget {
  const LoginPage3({super.key});

  @override
  Widget build(BuildContext context) {
    double myFontSize = 32;
    double paddingValue = 20.0;
    double radius = 40;
    double elevationValue = 0;
    double iconSize = 36;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _projectColors.transparent,
        elevation: elevationValue,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            bottom: paddingValue * 2, left: paddingValue, right: paddingValue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
                backgroundColor: _projectColors.primaryColor,
                radius: radius,
                child: CircleAvatar(
                  child: Icon(
                    Icons.dark_mode_rounded,
                    size: iconSize,
                    color: _projectColors.primaryColor,
                  ),
                  backgroundColor: _projectColors.white,
                  radius: radius * 0.3,
                )),
            Text(
              _projectText.loginNow,
              style:
                  TextStyle(fontSize: myFontSize, fontWeight: FontWeight.bold),
            ),
            Text(_projectText.pleaseLogin,
                style: TextStyle(
                    fontSize: myFontSize / 2, fontWeight: FontWeight.w200)),
            myTextField3(
              labelText: _projectText.email,
              outlineColor: _projectColors.primaryColor,
            ),
            myTextField3(
              labelText: _projectText.password,
              outlineColor: _projectColors.primaryColor,
              suffixIcon: Icon(Icons.visibility_off_outlined),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: myTextButton3(
                btnText: _projectText.forgetPassword,
                textColor: _projectColors.secondColor,
              ),
            ),
            myElevatedButton3(
              btnText: _projectText.login,
              btnColor: _projectColors.primaryColor,
            ),
            myTextButton3(
              btnText: _projectText.signUp,
              textColor: _projectColors.thirdColor,
            ),
            Text(
              _projectText.connect,
              style: TextStyle(color: _projectColors.thirdColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: myIconButton3(
                      btnIcon: _ProjectIcons.facebook,
                      btnColor: _projectColors.facebookIcon),
                ),
                Expanded(
                  child: myIconButton3(
                      btnIcon: _ProjectIcons.twitter,
                      btnColor: _projectColors.twitterIcon),
                ),
                Expanded(
                  child: myIconButton3(
                      btnIcon: _ProjectIcons.google,
                      btnColor: _projectColors.googleIcon),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _projectText {
  static String login = 'Log in';
  static String loginNow = 'Log In Now';
  static String pleaseLogin = 'Please login to continue our app';
  static String email = 'Email';
  static String password = 'Password';
  static String forgetPassword = 'Forget Password?';
  static String signUp = "Don't have an account?  Sign up";
  static String connect = 'or connect';
}

class _projectColors {
  static Color primaryColor = const Color(0xFF14d2bc);
  static Color secondColor = const Color(0xFF74c5f7);
  static Color thirdColor = const Color(0xFF9d9d9d);
  static Color white = Colors.white;
  static Color transparent = Colors.transparent;
  static Color facebookIcon = const Color(0xFF1877f2);
  static Color twitterIcon = const Color(0xFF03a9f4);
  static Color googleIcon = const Color(0xFFdd4b39);
}

class _ProjectIcons {
  static IconData facebook = Icons.facebook;
  static IconData twitter = FontAwesomeIcons.twitter;
  static IconData google = FontAwesomeIcons.googlePlus;
}
