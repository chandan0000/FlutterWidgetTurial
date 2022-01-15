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
        body: Center(
          child: IndexedStack(
            index: index,
            children: [
              Container(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 80),
                  ),
                  color: Colors.redAccent),
              Container(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 80),
                  ),
                  color: Colors.blue),
              Container(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 80),
                  ),
                  color: Colors.cyanAccent),
              Container(
                  padding: EdgeInsets.all(50),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 80),
                  ),
                  color: Colors.limeAccent),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                if (index == 3) {
                  index = 0;
                } else {
                  index = index + 1;
                }
              });
            },
            child: Icon(Icons.change_circle)),
      ),
    );
  }
}
