import 'dart:ui';
import 'package:flutter/material.dart';
void main(){
 runApp(new MaterialApp(
    home: new flutter(),
  ));
}
class flutter extends StatefulWidget {
  @override
  _flutterState createState() => _flutterState();
}
class _flutterState extends State<flutter> {
  void showBottom() {
   showModalBottomSheet<void>
   (context: context,
   builder:(BuildContext){
   return Container(
     padding: EdgeInsets.all(30.0),
     child: Row(
       mainAxisAlignment:MainAxisAlignment.spaceBetween,
       children: [
         Text('welcome to flutter'),
          FlatButton(
            color: Colors.red,
            child: Text(
              'OK',
              style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          }
          )
       ],
     ),
   );
   
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Center(
        child:RaisedButton(
          child: Text(
            'Click Me',
            style: TextStyle(color: Colors.white),
          
          ),
          color: Colors.blue,
         onPressed: showBottom,
        ),
      ),
    );
  }
}