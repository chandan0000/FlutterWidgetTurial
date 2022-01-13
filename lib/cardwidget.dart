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
              height: 200,
              width: 200,
              // color: Colors.blue,
              child: Card(
                color: Colors.blueGrey,
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(50),
                //     ),
                // elevation: 50,
                // margin: EdgeInsets.all(10.0),
                // shadowColor: Color.fromARGB(255, 240, 73, 12),
              ),
            ),
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
