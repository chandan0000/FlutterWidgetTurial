import 'dart:html';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 129, 165, 30),
          // actions: [Icon(Icons.more_vert)],
          // actionsIconTheme: IconThemeData(size: 40, color: Colors.purple),

          title: Text("title"),
          // textTheme: TextTheme(
          //     headline6: TextStyle(color: Color.fromARGB(255, 199, 27, 27))),
          // elevation: 25,
          // shadowColor: Colors.red,

          // toolbarHeight: 150,
          // toolbarOpacity: 0.5,
        ),
        // drawer: Drawer(),
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
