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
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        // body: Center(
        //   child: ClipRRect(
        //     child: Align(
        //       // alignment: Alignment.center,
        //       heightFactor: 0.7,
        //       widthFactor: 0.7,
        //       child: Image.network(
        //           'https://images.unsplash.com/photo-1642212575358-7d480141c0da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
        //     ),
        //     borderRadius: BorderRadius.all(Radius.circular(50)),

        //   ),
        // ),
        body: Center(
          child: ClipOval(
            child: Container(
              child: Image.network(
                  'https://images.unsplash.com/photo-1642212575358-7d480141c0da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
            ),
            clipper: MyClipper(),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTRB(2, 2, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
