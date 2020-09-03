import 'package:changeApp/service/database.dart';
import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      home: MyPageView(),
    ));

class MyPageView extends StatefulWidget {
  MyPageView({Key key}) : super(key: key);

  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    //data from firebase

    return MaterialApp(
      home: StreamProvider<QuerySnapshot>.value(
        value: DatabaseService().ray,
        child: Scaffold(
          body: PageView(
            controller: _pageController,
            children: [
              Mypage1Widget(),
              Mypage2Widget(),
              Mypage3Widget(),
            ],
          ),
        ),
      ),
    );
  }
}
