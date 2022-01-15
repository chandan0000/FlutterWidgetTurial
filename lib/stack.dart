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
  final person = List<String>.generate(50, (i) => 'Person $i');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
          child: Container(
            child: Stack(
              // alignment: Alignment.bottomCenter,
              // fit: StackFit.passthrough,
              //  textDirection: TextDecoration.rtl,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.tealAccent,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Color.fromARGB(255, 100, 206, 255),
                ),
                Positioned(
                  bottom: -15,
                  right: -25,
                  child: Container(
                    height: 180,
                    width: 180,
                    color: Color.fromARGB(255, 148, 231, 13),
                  ),
                ),
                // Text('Hello')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
