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
        child: RichText(
          text: TextSpan(
            text: 'fist',
            style: TextStyle(fontSize: 20, color: Colors.deepPurple),
            children: <TextSpan>[
              TextSpan(
                text: '2nd',
                style: TextStyle(fontSize: 25, color: Colors.deepPurple),
              ),
              TextSpan(
                text: ' 3nd',
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 206, 203, 34)),
              ),
              TextSpan(
                text: '4rd',
                style: TextStyle(fontSize: 40, color: Colors.deepPurple),
              ),
              TextSpan(
                text: 'hello duniya',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
