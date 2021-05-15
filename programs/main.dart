import 'package:flutter/material.dart';

void main() {
  runApp (Roter());
}

class Roter extends StatefulWidget {
  @override
  _RoterState createState() => _RoterState();
}

class _RoterState extends State<Roter> {
  String value='Test';

  void clickMe ()  {
    setState (()  {
      value = "Sashwin Dev";
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Text ('$value'),
          FloatingActionButton(
            child:Icon(Icons.add),
            onPressed: clickMe,
          )
        ],
      ),
    ); 
  }
}
