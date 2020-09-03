import 'package:changeApp/home.dart';
import 'package:flutter/material.dart';
import 'package:changeApp/service/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Mypage1Widget extends StatefulWidget {
  @override
  _Mypage1WidgetState createState() => _Mypage1WidgetState();
}

class _Mypage1WidgetState extends State<Mypage1Widget> {
  @override
  Widget build(BuildContext context) {
    final rays = Provider.of<QuerySnapshot>(context);
    String heading, imageurl, text;
    for (var doc in rays.documents) {
      heading = doc.data['heading'];
      imageurl = doc.data['imageurl'];
      text = doc.data['text'];
    }
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
                color: Colors.lightBlueAccent,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Center(
                      child: Text(
                        heading ?? " ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      text + " " + imageurl ?? "loading..",
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
                                  fontSize: 70.0,
                                  color: Colors.black)),
                          TextSpan(
                              text: '.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50.0,
                                  color: Colors.white)),
                          TextSpan(
                              text: '.    ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50.0,
                                  color: Colors.white)),
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                            })
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
