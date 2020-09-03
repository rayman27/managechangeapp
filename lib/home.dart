import 'package:changeApp/AboutUs.dart';
import 'package:changeApp/Feedback.dart';
import 'package:changeApp/admin.dart';
import 'package:changeApp/service/auth.dart';
import 'package:changeApp/video.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  Future navigateToAboutUs(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs()));
  }

  Future navigateToVideo(context) async {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Video(),
        ));
  }

  Future navigateToFeedback(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Feedbackform()));
  }

  @override
  /* Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.blue[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'),
            )
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                navigateToAboutUs(context);
              },
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('About Us'),
            ),
            RaisedButton(
              onPressed: () {
                navigateToVideo(context);
              },
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Video Enabling'),
            ),
            RaisedButton(
              onPressed: () {
                navigateToFeedback(context);
              },
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Feedback Form'),
            ),
          ],
        ),
      ),
    );
  }*/
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Card(
              elevation: 20.0,
              color: Colors.blue,
              margin: EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 0.0, bottom: 530.0),
              child: ListView(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 10.0, right: 5.0, bottom: 5.0),
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.clear_all,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                        ),
                        /* IconButton(
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),*/
                        FlatButton.icon(
                          onPressed: () async {
                            _auth.signOut();
                          },
                          icon: Icon(Icons.account_circle, color: Colors.white),
                          label: Text('logout'),
                        )
                      ],
                    )
                  ])),
          Card(
              elevation: 20.0,
              margin: EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 110.0, bottom: 500.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: ListView(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 18.0, bottom: 5.0),
                  children: <Widget>[
                    Row(
                      children: [
                        new CircleAvatar(),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hello,',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Milky Way')
                          ],
                        ),
                      ],
                    )
                  ])),
          Card(
              elevation: 20.0,
              margin: EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 210.0, bottom: 380.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: ListView(
                  padding: EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 18.0, bottom: 5.0),
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Latest Update',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Subtitle')
                      ],
                    ),
                  ])),
          Card(
              elevation: 20.0,
              margin: EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 600.0, bottom: 0.0),
              child: ListView(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 5.0, right: 5.0, bottom: 3.0),
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.home,
                                color: Colors.blueAccent,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                navigateToAboutUs(context);
                              },
                              icon: Icon(
                                Icons.clear_all,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('About')
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.account_circle,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Engage')
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Admin(),
                                    ));
                              },
                              icon: Icon(
                                Icons.account_circle,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Admin')
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                navigateToAboutUs(context);
                              },
                              icon: Icon(
                                Icons.supervisor_account,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('Connect')
                          ],
                        ),
                      ],
                    )
                  ])),
        ],
      ),
      /*floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Feedback'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),*/
    );
  }
}
