import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/elevatedButton.dart';
import 'components/iconButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

class LoginPage7 extends StatelessWidget {
  const LoginPage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: _ProjectColors().transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/png/logo7.png'))),
            ),
            Text(
              _ProjectText().uiMaster,
              style: _myTextStyle7(),
            ),
            Container(
              height: 10,
              width: 60,
              decoration: BoxDecoration(
                  color: _ProjectColors().dividerColor,
                  borderRadius: BorderRadius.circular(30)),
            ),
            Text(
              _ProjectText().login,
              style: _myTextStyle7(),
            ),
            myTextField7(
                hintText: _ProjectText().userName,
                hintColor: _ProjectColors().hintColor,
                borderColor: _ProjectColors().hintColor),
            myTextField7(
                hintText: _ProjectText().password,
                hintColor: _ProjectColors().hintColor,
                borderColor: _ProjectColors().hintColor),
            myElevatedButton7(
              btnText: _ProjectText().login,
              fontFamily: 'Lunasima',
              btnGradientColor1: _ProjectColors().rightBtnColor,
              btnGradientColor2: _ProjectColors().leftBtnColor,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myIconButton7(
                  btnIcon: _ProjectIcons().google,
                  iconColor: _ProjectColors().googleIcon,
                ),
                myIconButton7(
                  btnIcon: _ProjectIcons().facebook,
                  iconColor: _ProjectColors().facebookIcon,
                ),
                myIconButton7(
                  btnIcon: _ProjectIcons().twitter,
                  iconColor: _ProjectColors().twitterIcon,
                ),
              ],
            ),
            myTextButton7(
              btnText: _ProjectText().register,
              textColor: _ProjectColors().registerColor,
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _myTextStyle7() =>
      TextStyle(fontFamily: 'Blippo', color: Colors.white, fontSize: 40);
}

class _ProjectText {
  String uiMaster = 'UI EXPERT';
  String login = 'LOGIN';
  String userName = 'Username';
  String password = 'Password';
  String register = 'I dont\'t have an account? Register';
}

class _ProjectColors {
  Color white = Colors.white;
  Color transparent = Colors.transparent;
  Color dividerColor = Color(0xFFed6d2d);
  Color leftBtnColor = Color(0xFFff0000);
  Color rightBtnColor = Color(0xFF2f53b6);
  Color registerColor = Color(0xFFd60101);
  Color hintColor = Color(0xFF7b7e7d);
  Color facebookIcon = const Color(0xFF1877f2);
  Color googleIcon = const Color(0xFFdd4b39);
  Color twitterIcon = const Color(0xFF03a9f4);
}

class _ProjectIcons {
  IconData google = FontAwesomeIcons.google;
  IconData twitter = FontAwesomeIcons.twitter;
  IconData facebook = FontAwesomeIcons.facebook;
}
