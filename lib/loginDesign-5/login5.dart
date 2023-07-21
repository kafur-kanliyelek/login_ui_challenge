import 'package:flutter/material.dart';

import 'components/container.dart';
import 'components/elevatedButton.dart';
import 'components/loginWidget.dart';
import 'components/textButton.dart';
import 'components/textfield.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage5 extends StatelessWidget {
  const LoginPage5({super.key});

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          myContainer5(
            canColor: isKeyboard
                ? _ProjectColors.secondBlue
                : _ProjectColors.secondWhite,
            canHeight: double.infinity,
            canWidth: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(
                  flex: 8,
                ),
                Expanded(
                    flex: 22,
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              _ProjectColors.leftBlue,
                              _ProjectColors.rightBlue,
                            ]).createShader(bounds);
                      },
                      child: Visibility(
                        visible: !isKeyboard,
                        child: Icon(
                          FontAwesomeIcons.featherPointed,
                          //Icons.star,
                          size: screenHeight * 0.12,
                          color: _ProjectColors.leftBlue,
                        ),
                      ),
                    )),
                Spacer(
                  flex: 70,
                )
              ],
            ),
          ),
          Visibility(
            visible: !isKeyboard,
            child: myContainer5(
              canColor: _ProjectColors.rightBlue,
              canHeight: screenHeight * 0.5,
              canWidth: double.infinity,
              canMargin: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              canrborderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              canGradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [_ProjectColors.leftBlue, _ProjectColors.rightBlue]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(
                    flex: 50,
                  ),
                  Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        Spacer(
                          flex: 25,
                        ),
                        Expanded(
                          flex: 20,
                          child: Divider(
                            thickness: 3,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Center(
                            child: Text(
                              'OR',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Divider(
                            thickness: 3,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(
                          flex: 25,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Stack(
                      //fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            myLoginWidget5(
                              screenWidth: screenWidth,
                              loginIcon: _ProjectIcons.facebook,
                              alignIcon: Alignment.centerLeft,
                              iconColor: _ProjectColors.facebookIcon,
                              canHeight: 50,
                              iconSize: 45,
                            ),
                            myLoginWidget5(
                              screenWidth: screenWidth,
                              loginIcon: _ProjectIcons.googlePlus,
                              alignIcon: Alignment.centerRight,
                              iconColor: _ProjectColors.googleIcon,
                              canHeight: 50,
                              iconSize: 45,
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 100,
                            height: 80,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                    color: _ProjectColors.secondBlue,
                                    width: 3)),
                            child: Icon(
                              Icons.fingerprint_outlined,
                              size: 50,
                              color: _ProjectColors.secondBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: myTextButton5(
                        btnText: _ProjectText.dontHave,
                        textColor: _ProjectColors.white),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: myContainer5(
              canColor: _ProjectColors.white,
              canHeight: screenHeight * 0.45,
              canWidth: double.infinity,
              canMargin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              canrborderRadius: BorderRadius.circular(30.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      _ProjectText.login,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    myTextField5(
                        labelText: _ProjectText.userName,
                        labelColor: _ProjectColors.hintColor,
                        prefixIcon: _ProjectIcons.userIcon,
                        prefixIconColor: _ProjectColors.secondBlue),
                    myTextField5(
                        labelText: _ProjectText.password,
                        labelColor: _ProjectColors.hintColor,
                        prefixIcon: _ProjectIcons.passIcon,
                        prefixIconColor: _ProjectColors.secondBlue),
                    myTextButton5(
                      btnText: _ProjectText.forgotPass,
                      textColor: _ProjectColors.hintColor,
                      btnAlign: Alignment.centerRight,
                    ),
                    myElevatedButton(
                      btnText: _ProjectText.signIn,
                      textColor: _ProjectColors.secondBlue,
                      bgColor: _ProjectColors.white,
                      btnWidth: screenWidth * 0.35,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ProjectColors {
  static Color white = Colors.white;
  static Color secondWhite = Color(0xFFf2f2f3);
  static Color secondBlue = Color(0xFF75c0ec);
  static Color rightBlue = Color(0xFF5f71b2);
  static Color leftBlue = Color(0xFF69c0dc);
  static Color hintColor = Color(0xFF8a8a8a);
  static Color facebookIcon = const Color(0xFF1877f2);
  static Color googleIcon = const Color(0xFFdd4b39);
}

class _ProjectText {
  static String login = 'Login';
  static String userName = 'Username';
  static String password = 'Password';
  static String forgotPass = 'Forgot Password';
  static String signIn = 'Sign in';
  static String dontHave = 'Don\'t have an account? Click here';
}

class _ProjectIcons {
  static IconData userIcon = Icons.person_outline_rounded;
  static IconData passIcon = Icons.lock_outline_rounded;
  static IconData facebook = FontAwesomeIcons.facebook;
  static IconData googlePlus = FontAwesomeIcons.googlePlus;
}
