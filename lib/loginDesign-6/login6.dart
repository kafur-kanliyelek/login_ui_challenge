import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/elevatedButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage6 extends StatelessWidget {
  const LoginPage6({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double _canPadding = 20.0;
    double _canMargin = 20.0;
    double _elevationValue = 0;
    double _fontSize = 40;
    double _opacityValue = 0.4;
    double _borderWidth = 3.0;
    double _borderRadius = 25.0;
    String _assetPath = 'assets/png/arkaplan2.png';

    return Container(
      width: MediaQuery.of(context).size.width,
      height: screenHeight,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(_assetPath), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: _ProjectColors.transparent,
        appBar: AppBar(
          backgroundColor: _ProjectColors.transparent,
          elevation: _elevationValue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.rocketchat,
              size: screenHeight * 0.15,
              color: _ProjectColors.primaryColor,
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(_canPadding),
              margin: EdgeInsets.all(_canMargin),
              height: screenHeight * 0.6,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    _ProjectColors.black,
                    _ProjectColors.primaryColor
                  ]),
                  color: _ProjectColors.primaryColor.withOpacity(_opacityValue),
                  borderRadius: BorderRadius.circular(_borderRadius),
                  border: Border.all(
                      width: _borderWidth, color: _ProjectColors.borderColor)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _ProjectText.login,
                    style: TextStyle(
                      color: _ProjectColors.primaryColor,
                      fontSize: _fontSize,
                      fontFamily: _ProjectFonts().fontPrimary,
                    ),
                  ),
                  myTextField6(
                    hintText: _ProjectText.userName,
                    fillColor: _ProjectColors.primaryColor,
                    fontFamily: _ProjectFonts().fontPrimary,
                    hintColor: _ProjectColors.hintColor,
                  ),
                  myTextField6(
                    hintText: _ProjectText.password,
                    fillColor: _ProjectColors.primaryColor,
                    fontFamily: _ProjectFonts().fontPrimary,
                    hintColor: _ProjectColors.hintColor,
                  ),
                  myElevatedButton6(
                    btnText: _ProjectText.signIn,
                    btnColor: _ProjectColors.secondaryColor,
                    fontFamily: _ProjectFonts().fontPrimary,
                  ),
                  myTextButton6(
                    btnText: _ProjectText.forgotPass,
                    textColor: _ProjectColors.primaryColor,
                    fontFamily: _ProjectFonts().fontPrimary,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectText {
  static String login = 'LOGIN';
  static String userName = 'Username';
  static String password = 'Password';
  static String signIn = 'SIGN IN';
  static String forgotPass = 'Forgot Password?';
}

class _ProjectColors {
  static Color primaryColor = Colors.white;
  static Color secondaryColor = Color(0xFF323a47);
  static Color hintColor = Color(0xFF7b7e7d);
  static Color transparent = Colors.transparent;
  static Color black = Colors.black;
  static Color borderColor = Colors.white54;
}

class _ProjectFonts {
  String fontPrimary = 'Montserrat';
}
