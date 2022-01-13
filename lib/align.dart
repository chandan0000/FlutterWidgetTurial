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
          body: Align(
            // alignment: Alignment.bottomCenter,
            // alignment: Alignment(.1,0.3),
            widthFactor: 5,
            heightFactor: 2,
            child: Container(
              color: Colors.orange,
              height: 80,
              width: 100,
            ),
          )),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
