import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:training1/more_info1.dart';
class User_info extends StatefulWidget {
  const User_info({super.key});

  @override
  State<User_info> createState() => _User_infoState();
}

class _User_infoState extends State<User_info> {
  dynamic a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information", style: TextStyle(color: Color(0xff3e2f7f))),
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
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Text(
                          "select the account type",
                          style: TextStyle(
                              shadows: [
                                Shadow(color: Colors.white, blurRadius:3)
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
                                    title: Text("coach"),
                                    subtitle: Text("trainer"),
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
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                          "--------------------------------------------------"))
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
                                    title: Text("athlete"),
                                    subtitle: Text("trainee"),
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
                                      margin: EdgeInsets.all(5),
                                      child: Text(
                                          "--------------------------------------------------"))
                                ]),
                              ),
                            )
                          ]),
                      Container(
                          margin: EdgeInsets.all(40),
                          child: MaterialButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return more_info1();
                              }));
                            },
                            child: Text(
                              "next",
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
      // backgroundColor: Colors.white,
    );
  }
}
