import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttertarial/cardwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: ListView(
          // padding: MyApp,
          // physics: NeverScrollableScrollPhysics(),
          // reverse: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              // height: 150,
              width: 150,
              child: Text(' '),
              color: Color.fromARGB(255, 145, 96, 17),
            ),
            Container(
              // height: 150,
              child: Text(' '),
              color: Color.fromARGB(255, 220, 240, 105),
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Colors.greenAccent,
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Color.fromARGB(255, 156, 79, 7),
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Colors.greenAccent,
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Colors.greenAccent,
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Color.fromARGB(255, 10, 80, 46),
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Colors.greenAccent,
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Color.fromARGB(255, 21, 29, 25),
            ),
            Container(
              height: 150,
              child: Text(' '),
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
