import 'dart:html';

import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import 'package:yhealth/UI/screens/login_screen.dart';
import 'package:yhealth/UI/screens/trainee_info.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';

class TraineeProfile extends StatefulWidget {
  const TraineeProfile({super.key});

  @override
  State<StatefulWidget> createState() => _TraineeProfileState();
}

class _TraineeProfileState extends State<TraineeProfile> {
  bool gender = false;
  var age;
  var Weigiht;
  var Height;
  var level;
  var goals;
  var name;
  var img1;

  final a = DateTime.now();
  List task = ["1", "2", "3", "4"];

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
                          "${name}",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return TraineeInfo();
                                },
                              ));
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
                          "Gender  :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.male_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          "Age  :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " ${age}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Level  :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ${level}",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Text(
                        "goals  :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ${goals}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weigiht  :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ${Weigiht}",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Text(
                        "Height  :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ${Height}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "History  :",
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
                  height: 270,
                  child: ListView.builder(
                    key: UniqueKey(),
                    itemCount: task.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        onDismissed: (direction) {
                          task.removeAt(index);
                        },
                        key: Key("${index}"),
                        child: Container(
                          margin: EdgeInsets.only(right: 10, left: 10),
                          width: double.infinity,
                          height: 90,
                          child: Card(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset("imgs/yhealth.PNG"),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Text(
                                        "task name",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text("${a}")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              task.removeAt(index);
                                            });
                                          },
                                          icon: Icon(Icons.close)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
              // child: Image.asset(""),
              radius: 70,
            ),
          ),
        ),
      ],
    );
  }
}
