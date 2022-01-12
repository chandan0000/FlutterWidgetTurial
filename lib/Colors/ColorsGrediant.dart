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
        body: Center(
          child: Container(
            child: Text("hello"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff85ffc7),
              // gradient: LinearGradient(
              //     colors: [
              //       Color(
              //         hexColor('#85FFC7'),
              //       ),
              //       Color(hexColor('FF8552'))
              //     ],
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomLeft,
              //     stops: [0.2, 0.9],
              //     ),
              // gradient: RadialGradient(
              //     colors: [
              //       Color(
              //         hexColor('#85FFC7'),
              //       ),
              //       Color(hexColor('FF8552'))
              //     ],
              //     //     begin: Alignment.topCenter,
              //     //     end: Alignment.bottomLeft,
              //     stops: [
              //       0.2,
              //       0.9
              //     ],
              //     // center: Alignment(0.1, 0.8),
              //     // focal: Alignment(0.2, 0.5)),
              gradient: SweepGradient(
                colors: [
                  Color(
                    hexColor('#85FFC7'),
                  ),
                  Color(
                    hexColor('FF8552'),
                  )
                ],
                stops: [0.2, 1.0],
                startAngle: 0.5,
                endAngle: 1.0,
              ),
            ),
          ),
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
