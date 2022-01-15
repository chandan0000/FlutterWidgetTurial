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
        body: ListView.separated(
          //  itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                child: Text("person ${index + 1}"),
                padding: EdgeInsets.all(50),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Card(
              child: Padding(
                child: Text("Sperson ${index}"),
                padding: EdgeInsets.all(2),
              ),
            );
          },
        ),
      ),
    );
  }
}
