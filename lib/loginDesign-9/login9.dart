import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/clippath.dart';
import 'components/iconButton.dart';
import 'components/textButton.dart';
import 'components/textField.dart';

class LoginPage9 extends StatelessWidget {
  const LoginPage9({super.key});

  @override
  Widget build(BuildContext context) {
    double _elevationValue = 0;
    double screenHeight = MediaQuery.of(context).size.height;

    double _angle = 0.35;
    double _canPadding = 30.0;
    double _generalPadding = 20.0;
    double _canRadiusCircular = 30.0;
    return Scaffold(
      backgroundColor: _ProjectColors().primary,
      appBar: AppBar(
        elevation: _elevationValue,
        backgroundColor: _ProjectColors().transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _generalPadding),
        child: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    height: screenHeight * 0.6,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                        color: _ProjectColors().white,
                        borderRadius:
                            BorderRadius.circular(_canRadiusCircular)),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: _canPadding,
                        left: _canPadding,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _ProjectText().login,
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32,
                                  ),
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(right: _canPadding),
                            child: myTextField9(
                              obscure: false,
                              labelText: _ProjectText().email,
                              keyboardType: TextInputType.emailAddress,
                              hintColor: _ProjectColors().hintColor,
                              primaryColor: _ProjectColors().primary,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: _canPadding),
                            child: Column(
                              children: [
                                myTextField9(
                                  obscure: true,
                                  labelText: _ProjectText().password,
                                  keyboardType: TextInputType.visiblePassword,
                                  hintColor: _ProjectColors().hintColor,
                                  suffixIcon: _ProjectIcons().eye,
                                  primaryColor: _ProjectColors().primary,
                                ),
                                myTextButton9(
                                  btnText: _ProjectText().forgotPass,
                                  alignment: Alignment.centerRight,
                                  textColor: _ProjectColors().hintColor,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myIconButton9(
                                icon: _ProjectIcons().rightArrow,
                                iconColor: _ProjectColors().black,
                                canColor: _ProjectColors().transparent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: _angle,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: _canPadding),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                            angle: -_angle,
                            child: myIconButton9(
                              icon: _ProjectIcons().facebook,
                              iconColor: _ProjectColors().primary,
                              canColor: _ProjectColors().white,
                            ),
                          ),
                          Transform.rotate(
                            angle: -_angle,
                            child: myIconButton9(
                              icon: _ProjectIcons().linkedin,
                              iconColor: _ProjectColors().primary,
                              canColor: _ProjectColors().white,
                            ),
                          ),
                          Transform.rotate(
                            angle: -_angle,
                            child: myIconButton9(
                              icon: _ProjectIcons().twitter,
                              iconColor: _ProjectColors().primary,
                              canColor: _ProjectColors().white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: myTextButton9(
                      btnText: _ProjectText().signUp,
                      alignment: Alignment.bottomCenter,
                      textColor: _ProjectColors().white,
                    )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class _ProjectColors {
  Color primary = Color(0xFFfeb209);
  Color hintColor = Color(0xFFb4b4b6);
  Color transparent = Colors.transparent;
  Color white = Colors.white;
  Color black = Colors.black;
}

class _ProjectText {
  String login = 'LOGIN';
  String email = 'Email or Username';
  String password = 'Password';
  String forgotPass = 'Forgot Password?';
  String signUp = 'Already have an account? Signup';
}

class _ProjectIcons {
  IconData eye = Icons.visibility_rounded;
  IconData rightArrow = Icons.arrow_forward_rounded;
  IconData facebook = FontAwesomeIcons.facebookF;
  IconData linkedin = FontAwesomeIcons.linkedin;
  IconData twitter = FontAwesomeIcons.twitter;
}
