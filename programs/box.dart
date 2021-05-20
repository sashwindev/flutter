import 'package:flutter/material.dart';
void main() {
  runApp(new MaterialApp(
    home: new Datatable(),
  ));
}

class Datatable extends StatefulWidget {
  @override
  _DatatableState createState() => _DatatableState();
}

class _DatatableState extends State<Datatable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: Container(
       color: Colors.blue,
       height: 1000,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Container(
               color: Colors.green,
             height:100,
             width: 100,
             ),
             Container(
               color: Colors.orange,
             height:100,
             width: 100,
             ),
             Container(
               color: Colors.pink,
             height:100,
             width: 100,
            ),
          ]
        ),
     ),
    );
  }