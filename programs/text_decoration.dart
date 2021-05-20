import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Scaffold.of(context).openDrawer();
              print('Icon Button Click');
            },
          ),
          title: new Text('sashwin'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ]),
      body: Center(
          child: Text(
        'sashwin dev',
        style: TextStyle(
            fontSize: 45.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 0.0,
            wordSpacing: 6.0,
            backgroundColor: Colors.teal,
            shadows: [
              Shadow(color: Colors.black,
               offset: Offset(1, 5)),
            
            ]),
      )),
    );
  }
}