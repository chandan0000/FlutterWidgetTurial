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
              // keyboardType: TextInputType.number,
              // autofocus: true,
              // enabled: false,
              // readOnly: true,

              decoration: InputDecoration(
                  // border: InputBorder.none
                  // labelText: 'Fisrt Name',
                  // filled: true,
                  // fillColor: Colors.orangeAccent,
                  // border: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(50),
                  // borderSide: BorderSide.none)

                  hintText: 'Eamil',
                  helperText: 'or UserName',
                  //  border: InputBorder.none
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 244, 54, 181)))
                  // hintStyle: TextStyle(color: Colors.redAccent, fontSize: 30)),
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
