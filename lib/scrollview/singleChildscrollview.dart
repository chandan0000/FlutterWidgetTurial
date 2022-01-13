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
        body: SingleChildScrollView(
          // padding: EdgeInsets.all(15),
          // physics: ScrollPhysics(),
          // reverse: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 700,
                color: Colors.pinkAccent,
              ),
              Container(
                height: 500,
                color: Color.fromARGB(255, 109, 255, 64),
              )
            ],
          ),
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
