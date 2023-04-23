import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:string_validator/string_validator.dart';
import 'package:yhealth/UI/screens/login_screen.dart';

class CoachHome extends StatefulWidget {
  const CoachHome({super.key});

  @override
  State<StatefulWidget> createState() => _CoachHomeState();
}

class _CoachHomeState extends State<CoachHome> {
  var goals;
  var level;
  List task = ["1", "2", "3", "4"];
  List item = ["1", "2", "3", "4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              task.add(1);
            });
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Color(0xff3e2f7f),
          ),
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
            Column(
              //-----------------لصفحة كاملة
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    //------------ معلومات المدرب
                    width: double.infinity,
                    height: 80,
                    color: Colors.white,
                    // margin: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 0),
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Container(
                                  width: 1000,
                                  height: 300,
                                  child: ListView.builder(
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        padding: EdgeInsets.all(10),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 35,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "name",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  )),
                            );
                          },
                        );
                      },
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Text(
                                    "name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                                  Container(
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text("goals"),
                                            Text("${goals}/${goals}/${goals}"),
                                          ],
                                        ),
                                        VerticalDivider(),
                                        Column(
                                          children: [
                                            Text("level"),
                                            Text("${level} "),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //-------- محتوn باقي
                Expanded(
                  flex: 7,
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
                          margin: EdgeInsets.only(
                              top: 0, bottom: 3, right: 10, left: 10),
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
                                      Text("Push-up"),
                                      Text(" 4 : groups"),
                                      Text("10 : in ome group")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.edit,
                                            size: 30,
                                          )),
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
              ],
            ),
          ],
        ));
  }
}
