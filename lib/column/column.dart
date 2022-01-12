import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple App'),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // textDirection: TextDirection.rtl,
          // verticalDirection: VerticalDirection.up,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: Text(
                "Fist",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(30),
              color: Colors.blueAccent,
            ),
            Container(
              child: Text(
                "Second",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(30),
              color: Color.fromARGB(255, 255, 205, 68),
            ),
            Container(
              child: Text(
                "Third",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(30),
              color: Color.fromARGB(255, 10, 141, 87),
            ),
          ],
        ),
      ),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
