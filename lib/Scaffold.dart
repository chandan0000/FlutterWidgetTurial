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
      title: 'App title',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Center(
          child: Text('Hello'),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.ac_unit_outlined),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chair), label: 'Home')
          ],
        ),
        backgroundColor: Colors.green,
        drawer: Drawer(),
      ),
    );
  }
}
