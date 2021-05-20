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
      appBar: AppBar(
        title: new Text('flower'),
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
              ),
            child: Image.network(
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2gfr48AXI4eeZ1u63_4BcwGSL_O7UNLIn3w&usqp=CAU',
         ),
       ),
      ),
    );
  }
}