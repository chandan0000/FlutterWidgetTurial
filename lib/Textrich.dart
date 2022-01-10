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
      home: Center(
        child: Text.rich(
          TextSpan(
              text: 'Fist',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
              children: <TextSpan>[
                TextSpan(
                    text: ' second',
                    style: TextStyle(fontSize: 35, color: Colors.deepPurple)),
                TextSpan(
                    text: ' third',
                    style: TextStyle(
                        fontSize: 40, color: Color.fromARGB(255, 59, 72, 255)))
              ]),
        ),
      ),
    );
  }
}
