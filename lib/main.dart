import 'dart:html';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
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
  var temp = 0;
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
                // prefix: Icon(Icons.emoji_people_rounded),
                // suffix: Icon(Icons.emoji_people_rounded),
                suffixText: 'User',
                // prefix: CircularProgressIndicator(),
              ),
              cursorColor: Colors.green,
              cursorHeight: 5,
              maxLines: 1,
              maxLength: 4,
              // obscureText: true,
              // obscuringCharacter: '*',
              toolbarOptions: ToolbarOptions(
                copy: true,
                selectAll: true,
                paste: true,
                cut: true,
              ),
              
            ),
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
