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
          body: Center(
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              label: Text("Back"),
              style: TextButton.styleFrom(
                  // primary: Colors.white,
                  backgroundColor: Colors.deepPurpleAccent,
                  textStyle: TextStyle(fontSize: 20, color: Colors.blue),
                  // elevation: 10,
                  // side: BorderSide(color: Colors.yellow, width: 2.0)),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
        ));
  }
}

int hexColor(String c) {
  String sColor = '0xff' + c;
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
