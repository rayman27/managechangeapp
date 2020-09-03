import 'package:changeApp/home.dart';
import 'package:flutter/material.dart';

class Mypage3Widget extends StatefulWidget {
  @override
  _Mypage3WidgetState createState() => _Mypage3WidgetState();
}

class _Mypage3WidgetState extends State<Mypage3Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network('https://googleflutter.com/sample_image.jpg'),
          Container(
            width: 411.0,
            height: 330.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(0)),
              child: Container(
                color: Colors.yellow,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Center(
                      child: Text(
                        "Management",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "aaaaa",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 125.0),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50.0,
                                  color: Colors.white)),
                          TextSpan(
                              text: '.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50.0,
                                  color: Colors.white)),
                          TextSpan(
                              text: '.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 70.0,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 270.0),
                        Text(
                          "skip",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ));
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
