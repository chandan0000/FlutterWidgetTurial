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
      home: Center(
        child: ElevatedButton(
          child: Text('$num'),
          onPressed: () {
            setState(() {
              num++;
            });
          },
        ),
      ),
    );
  }
}
