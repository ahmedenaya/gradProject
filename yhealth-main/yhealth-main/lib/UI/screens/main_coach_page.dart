import 'dart:html';

import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:yhealth/UI/screens/coach_home.dart';
import 'package:yhealth/UI/screens/coach_profile.dart';
import 'package:yhealth/UI/screens/login_screen.dart';

class CoachMain extends StatefulWidget {
  const CoachMain({super.key});

  @override
  State<StatefulWidget> createState() => _CoachMainState();
}

int sp = 0;
List pages = [CoachHome(), CoachProfile()];

class _CoachMainState extends State<CoachMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Image.asset(""),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              icon: Icon(Icons.logout)),
          backgroundColor: Color(0xff3e2f7f),
        ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 20,
            selectedItemColor: Color(0xff3e2f7f),
            selectedIconTheme: IconThemeData(size: 25),
            selectedFontSize: 15,
            currentIndex: sp,
            onTap: (index) {
              setState(() {
                sp = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: "Home", icon: Icon(Icons.home_filled)),
              BottomNavigationBarItem(
                  label: "My profile", icon: Icon(Icons.person_3))
            ]),
        body: pages.elementAt(sp));
  }
}
