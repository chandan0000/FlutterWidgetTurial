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
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1642219586950-1ac407024c72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                        height: 100,
                        width: 100,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    Text("\nRahul"),
                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home),
                  ),
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.shopping_bag),
                  ),
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.contact_mail),
                  ),
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.email),
                  ),
                ],
              )
            ],
          ),
        ),
        //  body: ,
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
