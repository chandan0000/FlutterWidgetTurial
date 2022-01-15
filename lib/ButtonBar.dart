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
        body: ButtonBar(
          // alignment: MainAxisAlignment.spaceEvenly,
          // buttonPadding: EdgeInsets.all(100),
          // mainAxisSize: MainAxisSize.max,
          // overflowButtonSpacing: 100,
          // overflowDirection: VerticalDirection.down,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Ok'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Done This'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Other'),
            ),
          ],
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
