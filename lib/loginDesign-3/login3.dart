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
        backgroundColor: _ProjectColors.transparent,
        elevation: elevationValue,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            bottom: paddingValue * 2, left: paddingValue, right: paddingValue),
        child: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    backgroundColor: _ProjectColors.primaryColor,
                    radius: radius,
                    child: CircleAvatar(
                      backgroundColor: _ProjectColors.white,
                      radius: radius * 0.3,
                      child: Icon(
                        Icons.dark_mode_rounded,
                        size: iconSize,
                        color: _ProjectColors.primaryColor,
                      ),
                    )),
                Text(
                  _ProjectText.loginNow,
                  style: TextStyle(
                      fontSize: myFontSize, fontWeight: FontWeight.bold),
                ),
                Text(_ProjectText.pleaseLogin,
                    style: TextStyle(
                        fontSize: myFontSize / 2, fontWeight: FontWeight.w200)),
                myTextField3(
                  labelText: _ProjectText.email,
                  outlineColor: _ProjectColors.primaryColor,
                ),
                myTextField3(
                  labelText: _ProjectText.password,
                  outlineColor: _ProjectColors.primaryColor,
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: myTextButton3(
                    btnText: _ProjectText.forgetPassword,
                    textColor: _ProjectColors.secondColor,
                  ),
                ),
                myElevatedButton3(
                  btnText: _ProjectText.login,
                  btnColor: _ProjectColors.primaryColor,
                ),
                myTextButton3(
                  btnText: _ProjectText.signUp,
                  textColor: _ProjectColors.thirdColor,
                ),
                Text(
                  _ProjectText.connect,
                  style: TextStyle(color: _ProjectColors.thirdColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: myIconButton3(
                          btnIcon: _ProjectIcons.facebook,
                          btnColor: _ProjectColors.facebookIcon),
                    ),
                    Expanded(
                      child: myIconButton3(
                          btnIcon: _ProjectIcons.twitter,
                          btnColor: _ProjectColors.twitterIcon),
                    ),
                    Expanded(
                      child: myIconButton3(
                          btnIcon: _ProjectIcons.google,
                          btnColor: _ProjectColors.googleIcon),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class _ProjectText {
  static String login = 'Log in';
  static String loginNow = 'Log In Now';
  static String pleaseLogin = 'Please login to continue our app';
  static String email = 'Email';
  static String password = 'Password';
  static String forgetPassword = 'Forget Password?';
  static String signUp = "Don't have an account?  Sign up";
  static String connect = 'or connect';
}

class _ProjectColors {
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
