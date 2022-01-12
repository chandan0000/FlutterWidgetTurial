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
        body: Center(
          child: Container(
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 30),
            ),
            color: Colors.blue,
            height: 200,
            width: 200,
            // alignment: Alignment.center,
            // padding: EdgeInsets.all(value)
            // constraints: BoxConstraints.expand(),
            // transform: Matrix4.rotationZ(25)
            // transform: Matrix4.skewX(15.0)..rotateZ(80.0),
          ),
        ),
      ),
    );
  }
}
