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
            // color: Colors.blue,
            height: 200,
            width: 200,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(value)
            // constraints: BoxConstraints.expand(),
            // transform: Matrix4.rotationZ(25)
            // transform: Matrix4.skewX(15.0)..rotateZ(80.0),
            decoration: BoxDecoration(
              color: Colors.orange,
              // border: Border.all(
              //     color: Colors.black, width: 3, style: BorderStyle.solid),
              // border: Border(
              //   top: BorderSide(color: Colors.black, width: 2),
              //   bottom: BorderSide(
              //       color: Color.fromARGB(255, 184, 16, 184), width: 2),
              //   left: BorderSide(
              //       color: Color.fromARGB(255, 240, 80, 80), width: 2),
              //   right: BorderSide(
              //       color: Color.fromARGB(255, 238, 10, 40), width: 2),
              // ),
              // borderRadius:BorderRadius.all(Radius.circular(30.0)
              // borderRadius:
              //     BorderRadius.only(topLeft: Radius.circular(30.0))
              // boxShadow: [
              //   BoxShadow(
              //     blurRadius: 50,
              //     color: Colors.grey,
              //     // spreadRadius: 20.0,
              //     // offset: Offset(5.0, 5.0),
              //   ),
              // ],
              // shape: BoxShape.circle,
              // gradient: LinearGradient(
              //     begin: Alignment.centerRight,
              //     end: Alignment.centerLeft,
              //     colors: [Colors.yellow, Colors.deepPurple, Colors.cyan]),
            ),
          ),
        ),
      ),
    );
  }
}
