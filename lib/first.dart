import 'package:changeApp/welcomescreen.dart';
import 'package:flutter/material.dart';

class FirstScren extends StatefulWidget {
  @override
  _FirstScrenState createState() => _FirstScrenState();
}

class _FirstScrenState extends State<FirstScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          child: Text("Hai", style: TextStyle(color: Colors.deepOrange)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomeScreen(),
              ),
            );
          }),
    );
  }
}
