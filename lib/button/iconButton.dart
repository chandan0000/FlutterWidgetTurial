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
          child: IconButton(
            onPressed: () {},
             icon: Icon(Icons.bubble_chart),
            //  icon: Text('Icons'),
            // icon: Image.network(
            //     'https://images.unsplash.com/photo-1641996499255-55db659bbc50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
            iconSize: 100,
            //  tooltip: 'Bubble',
            color: Colors.brown,
            // disabledColor: Colors.red,
            // splashColor: Colors.yellow,
            // highlightColor: Colors.yellow,
            // hoverColor: Colors.yellow,
            // splashRadius: 10,
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
