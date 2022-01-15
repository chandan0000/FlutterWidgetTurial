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
        appBar: AppBar(),
        body: Center(
          child: Text('Floating Action Button'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          // foregroundColor: Colors.red,
          // backgroundColor: Colors.brown,
          // mini: true,
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(20))),
          elevation: 30,
          // highlightElevation: 30,
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
