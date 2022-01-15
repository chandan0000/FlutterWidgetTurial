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
        body: ListView(
          // padding: MyApp,
          // physics: NeverScrollableScrollPhysics(),
          // reverse: true,
          // scrollDirection: Axis.horizontal,
          children: [
            ListTile(
              title: Text("Demo Text"),
              subtitle: Text("Demo subtitle\n 3rd line"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.star),
              // contentPadding: EdgeInsets.all(30),
              onTap: () {},
              onLongPress: () {},
              // enabled: true,
              // dense: true,
              isThreeLine: true,
              tileColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
