import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: About',
      style: optionStyle,
    ),
    Text(
      'Index 2: My Calender',
      style: optionStyle,
    ),
    Text(
      'Index 3: More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: new AppBar(
        backgroundColor: Colors.blue[200],
        title: Text("Landing Page"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.blue,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: Colors.blue,
              ),
              onPressed: null)
        ],
      ),

      // Body

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                child: Text('First'),
              ),
              flex: 1,
              fit: FlexFit.loose,
            ),
            Flexible(
                child: Container(
                  child: Text('Second'),
                ),
                flex: 2,
                fit: FlexFit.loose),
            Flexible(
              child: Container(child: Text('Third')),
              flex: 3,
              fit: FlexFit.loose,
            ),
          ],
        ),
      ),

      //Bottom Naviagtion Bar

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.amber),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_column,
              color: Colors.amber,
            ),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.amber,
            ),
            title: Text('Calender'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more, color: Colors.amber), title: Text('More')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
