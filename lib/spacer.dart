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
        body: Row(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Spacer(),
            Container(
              height: 60,
              width: 60,
              color: Color.fromARGB(255, 222, 243, 33),
            ),
            Spacer(
              flex: 3,
            ),
            Container(
              height: 60,
              width: 60,
              color: Color.fromARGB(255, 33, 243, 96),
            )
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
