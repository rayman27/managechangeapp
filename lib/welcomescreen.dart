import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
          child: AppBar(
            actions: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          )),
      body: Text('Welcome'),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.clear_all,
              color: Colors.blueGrey,
            ),
            title: Text(
              'About',
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.blueGrey,
            ),
            title: Text(
              'Engage',
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.blueGrey,
            ),
            title: Text(
              'Training',
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
              color: Colors.blueGrey,
            ),
            title: Text(
              'Connect',
              style: TextStyle(
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
