import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("ghefvsfjhfgfsfhghsr",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 2, color: Colors.black)),
              width: double.infinity,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              child: Text(
                "In this article, I’d like "
                "to reacquaint you with the humble workhorse of communication that is the paragraph."
                " Paragraphs are everywhere. In fact, at the high risk of stating the obvious,"
                " you are reading one now. Despite their ubiquity, we frequently neglect their presentation. "
                "This is a mistake.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, height: 1.5),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black,style: BorderStyle.solid)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                    Icon( Icons.star,color: Colors.yellow,),
                    Icon( Icons.star,color: Colors.yellow,),
                    Icon( Icons.star,color: Colors.yellow,),
                    Icon(Icons.star),
                    Icon(Icons.star),
                      ],
                    ),
                    Text("17 reviews")
                  ],
                ),

                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                       
                      children: [
                      Icon(Icons.restaurant, color: Colors.green,size: 40,),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("feed"),),
                      Text("2-4"),
                    ],),
                    Column(children: [
                      Icon(Icons.category, color: Colors.green,size: 40,),
                     Container(
                        padding: EdgeInsets.all(10),
                        child: Text("feed"),),
                      Text("2-4"),
                    ],),
                    Column(children: [
                      Icon(Icons.emoji_food_beverage, color: Colors.green,size: 40,),
                     Container(
                        padding: EdgeInsets.all(10),
                        child: Text("feed"),),
                      Text("2-4"),
                    ],),
                    
                  ],
                )
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
