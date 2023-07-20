import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/elevatedButton.dart';
import 'components/iconButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

class LoginPage10 extends StatelessWidget {
  const LoginPage10({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double elevationValue = 0;
    double socialCanHeight = 50.0;
    double socialCanPadding = 20.0;
    double socialCanRadius = 30.0;
    return Scaffold(
      backgroundColor: _ProjectColors().third,
      appBar: AppBar(
        elevation: elevationValue,
        backgroundColor: _ProjectColors().transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _ProjectColors().white.withOpacity(0.1),
                  border: Border.all(
                      color: _ProjectColors().white.withOpacity(0.6))),
              child: Transform.rotate(
                  angle: 0.8,
                  child: Icon(
                    _ProjectIcons().plane,
                    size: 60,
                    color: _ProjectColors().white,
                  )),
            ),
            Spacer(),
            Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: screenHeight * 0.6,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: _ProjectColors().secondary,
                      borderRadius: BorderRadius.circular(socialCanRadius)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        _ProjectText().loginFast,
                        style: TextStyle(
                            color: _ProjectColors().white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      myTextField10(
                        keyboardType: TextInputType.emailAddress,
                        labelText: _ProjectText().email,
                        color: _ProjectColors().white,
                        obscure: false,
                      ),
                      myTextField10(
                        keyboardType: TextInputType.number,
                        obscure: true,
                        labelText: _ProjectText().password,
                        suffixIcon: _ProjectIcons().eye,
                        color: _ProjectColors().white,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: myTextButton10(
                          btnText: _ProjectText().forgotPass,
                          textColor: _ProjectColors().white,
                        ),
                      ),
                      myElevatedButton10(
                          btnText: _ProjectText().login,
                          btnColor: _ProjectColors().third,
                          textColor: _ProjectColors().white),
                      Row(
                        children: [
                          Expanded(
                            child: MyDivider(0.0, 20.0),
                          ),
                          Text(
                            _ProjectText().continueWith,
                            style: TextStyle(color: _ProjectColors().white),
                          ),
                          Expanded(child: MyDivider(20.0, 0.0)),
                        ],
                      ),
                      Container(
                        height: socialCanHeight,
                        width: (socialCanHeight * 3) + (socialCanPadding * 2),
                        padding:
                            EdgeInsets.symmetric(horizontal: socialCanPadding),
                        decoration: BoxDecoration(
                          color: _ProjectColors().fourth,
                          borderRadius: BorderRadius.all(
                              Radius.circular(socialCanRadius)),
                        ),
                        child: Row(
                          children: [
                            myIconButton10(
                              icon: _ProjectIcons().google,
                              iconColor: _ProjectColors().white,
                            ),
                            MyVerticalDivider(),
                            myIconButton10(
                              icon: _ProjectIcons().facebook,
                              iconColor: _ProjectColors().white,
                            ),
                            MyVerticalDivider(),
                            myIconButton10(
                              icon: _ProjectIcons().twitter,
                              iconColor: _ProjectColors().white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -30,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: screenWidth * 0.3,
                    decoration: BoxDecoration(
                      color: _ProjectColors().secondary,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text(
                      _ProjectText().login,
                      style: TextStyle(
                          color: _ProjectColors().white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Divider MyDivider(indent, endIndent) {
    return Divider(
      color: _ProjectColors().white.withOpacity(0.7),
      indent: indent,
      height: 1,
      endIndent: endIndent,
      thickness: 1,
    );
  }

  VerticalDivider MyVerticalDivider() {
    return VerticalDivider(
      color: _ProjectColors().white.withOpacity(0.2),
      width: 1,
      indent: 5,
      endIndent: 5,
      thickness: 1.5,
    );
  }
}

class _ProjectColors {
  Color primary = Color(0xFF022e77);
  Color secondary = Color(0xFF022e77);
  Color third = Color(0xFF205afa);
  Color fourth = Color(0xFF17386e);
  Color white = Colors.white;
  Color transparent = Colors.transparent;
}

class _ProjectText {
  String login = 'Log In';
  String loginFast = 'Welcome, Please log in fast,';
  String email = 'Email';
  String password = 'Password';
  String forgotPass = 'Forgot Password';
  String continueWith = 'or Continue with';
}

class _ProjectIcons {
  IconData plane = Icons.flight_rounded;
  IconData eye = Icons.visibility_off_outlined;
  IconData google = FontAwesomeIcons.google;
  IconData facebook = FontAwesomeIcons.facebookF;
  IconData twitter = FontAwesomeIcons.twitter;
}
