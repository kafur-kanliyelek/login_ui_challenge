import 'package:flutter/material.dart';

import 'components/closeButton.dart';
import 'components/elevatedButton.dart';
import 'components/loginText.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double elevationValue = 0;
    double paddingValue = 20.0;
    double btnOpacityValue = 1;
    double btnOpacityValue2 = 0.1;
    double btnBorderSideValue = 0;
    double btnBorderSideValue2 = 2;
    double indentValue = 10;
    double endIndentValue = 10;
    String or = 'or';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _ProjectColors.projectTransparent,
        elevation: elevationValue,
        leading: MyCloseButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(paddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Align(alignment: Alignment.topLeft, child: LogInTextWidget()),
            const MyTextField(
              labelText: 'E-mail',
            ),
            const MyTextField(
              labelText: 'Password',
            ),
            MyElevatedButton(
              buttonText: 'Log in',
              btnTextColor: _ProjectColors.projectWhite,
              btnBgColor: _ProjectColors.projectBlack,
              btnOpacity: btnOpacityValue,
              btnBorderSide: btnBorderSideValue,
            ),
            MyTextButton(
              btnText: 'Forgot the password',
              textColor: _ProjectColors.projectBlack2,
            ),
            Row(children: [
              Expanded(
                child: Divider(
                  indent: indentValue,
                  endIndent: endIndentValue,
                  color: _ProjectColors.projectBlack,
                ),
              ),
              Text(or),
              Expanded(
                  child: Divider(
                      indent: indentValue,
                      endIndent: endIndentValue,
                      color: _ProjectColors.projectBlack)),
            ]),
            MyElevatedButton(
              buttonText: 'Log in with facebook',
              btnTextColor: _ProjectColors.projectBlue,
              btnBgColor: _ProjectColors.projectTransparent,
              btnOpacity: btnOpacityValue2,
              btnBorderSide: btnBorderSideValue2,
            ),
            MyTextButton(
              btnText: 'Dont have account yet? Sign up',
              textColor: _ProjectColors.projectBlack3,
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectColors {
  static Color projectWhite = Colors.white;
  static Color projectBlack = Colors.black;
  static Color projectBlack2 = Colors.black87;
  static Color projectBlack3 = Colors.black54;

  static Color projectBlue = Colors.blueAccent;
  static Color projectTransparent = Colors.transparent;
}
