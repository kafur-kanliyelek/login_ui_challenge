import 'package:flutter/material.dart';

import 'components/elevatedButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

class LoginPage8 extends StatelessWidget {
  const LoginPage8({super.key});

  @override
  Widget build(BuildContext context) {
    double canHeight = 120;
    double canWidth = 120;
    double appBarelevationValue = 0;
    double generalPadding = 30.0;
    double circularRadius = 15.0;
    double canOpacity = 0.4;
    double angle = 45;
    double iconSize = 50;
    double fontSize = 12;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            _ProjectColors().primaryColor,
            _ProjectColors().secondaryColor,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: _ProjectColors().transparent,
        appBar: AppBar(
          elevation: appBarelevationValue,
          backgroundColor: _ProjectColors().transparent,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: generalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: canWidth,
                    height: canHeight,
                    decoration: BoxDecoration(
                      color: _ProjectColors().white.withOpacity(canOpacity),
                      borderRadius:
                          BorderRadius.all(Radius.circular(circularRadius * 2)),
                    ),
                  ),
                  Transform.rotate(
                    angle: angle,
                    child: Container(
                      alignment: Alignment.center,
                      width: canWidth * 0.66,
                      height: canHeight * 0.66,
                      decoration: BoxDecoration(
                          color: _ProjectColors().white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(circularRadius))),
                      child: Transform.rotate(
                        angle: -angle,
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                _ProjectColors().primaryColor,
                                _ProjectColors().secondaryColor
                              ],
                            ).createShader(bounds);
                          },
                          child: Icon(
                            Icons.restaurant_menu,
                            size: iconSize,
                            color: _ProjectColors().white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    _ProjectText().foodPie,
                    style: TextStyle(
                        color: _ProjectColors().white,
                        fontSize: fontSize * 4,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    _ProjectText().alwaysgive,
                    style: TextStyle(
                        color: _ProjectColors().yellow,
                        fontSize: fontSize,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myTextField8(
                      hintText: _ProjectText().username,
                      textColor: _ProjectColors().white,
                      icon: _ProjectIcons().user,
                      canColor: _ProjectColors().white,
                      iconColor: _ProjectColors().primaryColor,
                    ),
                    myTextField8(
                      hintText: _ProjectText().password,
                      textColor: _ProjectColors().white,
                      icon: _ProjectIcons().password,
                      canColor: _ProjectColors().white,
                      iconColor: _ProjectColors().primaryColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    myElevatedButton8(
                      btnText: _ProjectText().login,
                      textColor: _ProjectColors().primaryColor,
                      btnColor: _ProjectColors().white,
                    ),
                    myTextButton8(
                      btnText: _ProjectText().signUp,
                      textColor: _ProjectColors().white,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: myTextButton8(
                  btnText: _ProjectText().forgotPass,
                  textColor: _ProjectColors().white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectText {
  String foodPie = 'FoodPie';
  String alwaysgive = 'Always Give Better Food Ever';
  String username = 'User Name';
  String password = 'Password';
  String login = 'LOGIN';
  String signUp = 'Don\'t have an account? Sign Up Now';
  String forgotPass = 'Forgot Password?';
}

class _ProjectColors {
  Color primaryColor = Color(0xFFff4070);
  Color secondaryColor = Color(0xFFff8a78);
  Color white = Colors.white;
  Color yellow = Color(0xFFfcc568);
  Color transparent = Colors.transparent;
}

class _ProjectIcons {
  IconData user = Icons.person_outline;
  IconData password = Icons.key_outlined;
}
