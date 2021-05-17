import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Rooter(),
    debugShowCheckedModeBanner: false,
  ));
}

class Rooter extends StatefulWidget {
  @override
  _RooterState createState() => _RooterState();
}

class _RooterState extends State<Rooter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
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
        ]
      ),
      body: Center(
        child: Text(
          'Welcome to Rooter',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.red,
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('sashwin'),
            accountEmail: Text('sashwindev@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('sashwin'),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('win'),
              ),
            ],
          ),
          ListTile(
            title: Text('All inbox'),
            leading: Icon(Icons.mail),
          ),
          Divider(height: 0.1),
          ListTile(
            title: Text('notifacation'),
            leading: Icon(Icons.beach_access),
          ),
          Divider(height: 0.1),
          ListTile(
            title: Text(' social'),
            leading: Icon(Icons.mail),
          ),
          Divider(height: 0.1),
          ListTile(
            title: Text(' scince'),
            leading: Icon(Icons.search),
          ),
        ])
      ),      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title:Text('Home'),
            icon: Icon(Icons.home),
            backgroundColor: Colors.blue,
          ),
            BottomNavigationBarItem(
            title:Text('new'),
            icon: Icon(Icons.exposure_plus_1),
          ),
          BottomNavigationBarItem(
            title:Text('security'),
            icon: Icon(Icons.security),
          ),
          BottomNavigationBarItem(
            title:Text('settings'),
            icon: Icon(Icons.settings),
          ),
          // BottomNavigationBarsItem(
          //   title:Text('security'),
          //   icon: Icon(Icons.security),
          // ),
        ] 
      ),
    );    
  }
}
