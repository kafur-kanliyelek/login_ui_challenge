import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../loginDesign-1/login1.dart';
import '../loginDesign-10/login10.dart';
import '../loginDesign-2/login2.dart';
import '../loginDesign-3/login3.dart';
import '../loginDesign-4/login4.dart';
import '../loginDesign-5/login5.dart';
import '../loginDesign-6/login6.dart';
import '../loginDesign-7/login7.dart';
import '../loginDesign-8/login8.dart';
import '../loginDesign-9/login9.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingTopandBottom = screenHeight * 0.05;
    double paddingLeftandRight = 8.0;
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.only(
                top: paddingTopandBottom,
                bottom: paddingTopandBottom,
                left: paddingLeftandRight,
                right: paddingLeftandRight),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  _HomeColors().beginColor1,
                  _HomeColors().beginColor2
                ])),
            child: _myListView(context)),
      ),
    );
  }
}

ListView _myListView(BuildContext context) {
  return ListView.builder(
      itemCount: _myPages.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: _HomeColors().beginColor1),
              borderRadius: BorderRadius.zero),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  _HomeColors().beginColor1,
                  _HomeColors().beginColor2
                ])),
            child: ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(_HomeIcons().leadingIcon),
              title: Text(
                'Tasarım ${index + 1}',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _myPages[index]));
                  },
                  icon: Icon(_HomeIcons().trailingIcon)),
              onTap: () {},
            ),
          ),
        );
      });
}

List _myPages = [
  LoginPage1(),
  LoginPage2(),
  LoginPage3(),
  LoginPage4(),
  LoginPage5(),
  LoginPage6(),
  LoginPage7(),
  LoginPage8(),
  LoginPage9(),
  LoginPage10(),
];

class _HomeIcons {
  IconData leadingIcon = Icons.design_services_outlined;
  IconData trailingIcon = Icons.chevron_right;
}

class _HomeColors {
  Color beginColor1 = Color(0xFF97596E);
  Color beginColor2 = Color(0xFF402C3E).withOpacity(0.8);
  Color white = Colors.white;
}
