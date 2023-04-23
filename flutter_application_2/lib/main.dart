import 'dart:convert';
import 'dart:html';
import 'dart:js_util';
import 'dart:math';

import 'package:flutter/material.dart';
import 'test1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
