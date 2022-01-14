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
          // child: ElevatedButton.icon(
          //     onPressed: () {},
          //     icon: Icon(Icons.bubble_chart),
          //     label: Text('Button')),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 100, width: 100),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('ElevatedButton'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                  textStyle: TextStyle(fontSize: 20),
                  elevation: 25,
                  shadowColor: Colors.red,
                  // side: BorderSide()
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
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
