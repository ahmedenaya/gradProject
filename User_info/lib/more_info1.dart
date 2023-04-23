import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class more_info1 extends StatefulWidget {
  const more_info1({super.key});

  @override
  State<more_info1> createState() => _more_info1State();
}

class _more_info1State extends State<more_info1> {
  dynamic b = false;
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
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        "Gender ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      RadioListTile(
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
              Card(),
              Card(),
              Card(),
              Card(),
            ],
          ),
        )
      ]),
    );
  }
}
