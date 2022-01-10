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
      home: Column(children: <Widget>[
        Text.rich(TextSpan(
            text: 'Hello',
            style: TextStyle(fontSize: 20),
            children: <InlineSpan>[
              TextSpan(
                  text: 'World',
                  style: TextStyle(fontSize: 40, color: Colors.blue)),
              TextSpan(
                text: '  !',
                style: TextStyle(fontSize: 50),
              ),
            ])),
      ]),
    );
  }
}
