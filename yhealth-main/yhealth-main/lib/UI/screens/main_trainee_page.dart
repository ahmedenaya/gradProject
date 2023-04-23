import 'dart:html';

import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:yhealth/UI/screens/login_screen.dart';
import 'package:yhealth/UI/screens/trainee_home.dart';
import 'package:yhealth/UI/screens/trainee_profile.dart';

class TraineeMain extends StatefulWidget {
  const TraineeMain({super.key});

  @override
  State<StatefulWidget> createState() => _TraineeMainState();
}

int sp = 0;
List pages = [TraineeHome(), TraineeProfile()];

class _TraineeMainState extends State<TraineeMain> {
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
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: Search());
                },
                icon: Icon(Icons.search))
          ],
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

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    return Text("data1");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("data2");
  }
}
