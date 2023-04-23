import 'dart:html';

import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:yhealth/UI/screens/coach_info.dart';
import 'package:yhealth/UI/screens/trainee_home.dart';
import 'package:yhealth/UI/screens/trainee_profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class CoachProfile extends StatefulWidget {
  const CoachProfile({super.key});

  @override
  State<StatefulWidget> createState() => _CoachProfileState();
}

class _CoachProfileState extends State<CoachProfile> {
  var gender;
  var exp;
  var Weigiht;
  var Height;
  var level;
  var majors;
  var coach_name;

  final a = DateTime.now();
  List tr = ["1", "2", "3", "4"];

  final ImagePicke = ImagePicker();
  uimg() async {
    var picked = await ImagePicke.getImage(source: ImageSource.gallery);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Color(0xff3e2f7f),
            ),
            Card(
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${coach_name}",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return CoachInfo();
                              }));
                            },
                            icon: Icon(Icons.settings))
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Gender :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ${gender}",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Maigors :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ${majors}/${majors}/${majors}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Years of Experience :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ${exp}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Trainees list  :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 320,
                  child: ListView.builder(
                    itemCount: tr.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Container(
                                        color: Color(0xff3e2f7f),
                                        width: double.infinity,
                                        // height: 400,
                                        child: CircleAvatar(
                                          radius: 50,
                                        )),
                                    Card(
                                      child: Column(
                                        children: [
                                          Container(
                                              child: Text(
                                            "Name",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Gender :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(" data"),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "Age :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(" data"),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Level :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(" data"),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "Goals :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(" data"),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Weigiht :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(" data"),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Text(
                                                  "Height :",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(" data"),
                                              ],
                                            ),
                                          ),
                                          Container(
                                              child: Text(
                                            "Hestory",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )),
                                          Container(
                                            height: 300,
                                            width: 1000,
                                            child: ListView.builder(
                                              itemCount: 10,
                                              itemBuilder: (context, index) {
                                                return Container(
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 5),
                                                  width: double.infinity,
                                                  height: 60,
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Image.asset(
                                                            "imgs/yhealth.PNG"),
                                                      ),
                                                      Expanded(
                                                        flex: 2,
                                                        child: Column(
                                                          children: [
                                                            Text("Push-up"),
                                                            Text("4 : groups"),
                                                            Text(
                                                                "10 : in ome group")
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          //------------ معلومات المدرب
                          width: double.infinity,
                          height: 100,
                          color: Colors.white,
                          // margin: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "imgs/default_avatar.jpg",
                                  ),
                                  radius: 32,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Text(
                                        "name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          tr.removeAt(index);
                                        });
                                      },
                                      icon: Icon(Icons.close)))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 55),
          child: InkWell(
            onTap: () {
              uimg();
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/imgs/default_avatar.jpg"),
              radius: 70,
            ),
          ),
        )
      ],
    );
  }
}
