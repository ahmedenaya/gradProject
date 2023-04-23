import 'dart:html';

import 'package:flutter/material.dart';
import 'package:yhealth/UI/screens/coach_info.dart';
import 'package:yhealth/UI/screens/trainee_info.dart';
import 'package:string_validator/string_validator.dart';
import 'package:yhealth/UI/screens/login_screen.dart';

class AccountType extends StatefulWidget {
  const AccountType({super.key});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  dynamic a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information",
            style: TextStyle(color: Color(0xff3e2f7f))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.language,
                color: Color(0xff3e2f7f),
              )),
        ],
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xff3e2f7f))),
        backgroundColor: Color(0xfffbfbfc),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                    image: AssetImage(
                      "assets/imgs/background1.jpg",
                    ))),
          ),
          SingleChildScrollView(
            child: Form(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                        child: Text(
                          "Select the account type",
                          style: TextStyle(
                              shadows: [
                                Shadow(color: Colors.white, blurRadius: 3)
                              ],
                              color: Color(0xff3e2f7f),
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              fontFamily: AutofillHints.birthday),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Card(
                                elevation: 10,
                                margin: EdgeInsets.only(left: 10, right: 2.5),
                                // color: Colors.red,   //test
                                child: Column(children: [
                                  RadioListTile(
                                    selected: a == "a1" ? true : false,
                                    secondary: Icon(
                                      Icons.sports_kabaddi,
                                      size: 20,
                                    ),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text("Coach",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    value: "a1",
                                    groupValue: a,
                                    onChanged: (value) {
                                      setState(() {
                                        a = value;
                                      });
                                    },
                                  ),
                                  Container(
                                      child: Image.asset(
                                          "assets/imgs/fitness.png")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 15, bottom: 20),
                                      child: Text(
                                        "Experienced trainers",
                                        style: TextStyle(fontSize: 15),
                                      ))
                                ]),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                elevation: 10,
                                margin: EdgeInsets.only(right: 10, left: 2.5),
                                // color: Colors.red,   //test
                                child: Column(children: [
                                  RadioListTile(
                                    selected: a == "a2" ? true : false,
                                    secondary: Icon(
                                      Icons.sports_kabaddi,
                                      size: 20,
                                    ),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Text(
                                      "Trainee",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    value: "a2",
                                    groupValue: a,
                                    onChanged: (value) {
                                      setState(() {
                                        a = value;
                                      });
                                    },
                                  ),
                                  Container(
                                      child: Image.asset(
                                          "assets/imgs/fitness.png")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 15, bottom: 20),
                                      child: Text(
                                        "Fitness and body builder",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ))
                                ]),
                              ),
                            )
                          ]),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 100),
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              if (a == "a1") {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return CoachInfo();
                                }));
                              } else if (a == "a2") {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return TraineeInfo();
                                }));
                              }
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Color(0xff3e2f7f), fontSize: 15),
                            ),
                          ))
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
