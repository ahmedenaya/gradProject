import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:yhealth/UI/screens/main_coach_page.dart';

import 'package:yhealth/UI/widgets/CustomFormField.dart';
import 'package:yhealth/UI/screens/account_type.dart';

class CoachInfo extends StatefulWidget {
  const CoachInfo({super.key});

  @override
  State<CoachInfo> createState() => _CoachInfoState();
}

class _CoachInfoState extends State<CoachInfo> {
  dynamic b = false;
  dynamic c = false;
  var weight = 20.0;
  var height = 100.0;
  dynamic g1 = false;
  dynamic g2 = false;
  dynamic g3 = false;
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
      body: Stack(children: [
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
          child: Column(
            children: [
              Card(
                  elevation: 15,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Gender ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      RadioListTile(
                          secondary: Icon(Icons.male),
                          title: Text("Male"),
                          selected: b == "b1" ? true : false,
                          value: "b1",
                          groupValue: b,
                          onChanged: (val) {
                            setState(() {
                              b = val;
                            });
                          }),
                      RadioListTile(
                          secondary: Icon(Icons.female),
                          title: Text("Female"),
                          selected: b == "b2" ? true : false,
                          value: "b2",
                          groupValue: b,
                          onChanged: (val) {
                            setState(() {
                              b = val;
                            });
                          })
                    ],
                  )),
              Card(
                elevation: 15,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2.5),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Years of Experience",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        decoration: InputDecoration(
                            hintText: "years of work in the field",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                  elevation: 15,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Majors ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    CheckboxListTile(
                      title: Text("Fitness"),
                      value: g1,
                      onChanged: (value) {
                        setState(() {
                          g1 = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Body builder"),
                      value: g2,
                      onChanged: (value) {
                        setState(() {
                          g2 = value;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Slimming"),
                      value: g3,
                      onChanged: (value) {
                        setState(() {
                          g3 = value;
                        });
                      },
                    )
                  ])),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return CoachMain();
                      }));
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Color(0xff3e2f7f), fontSize: 15),
                    ),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
