import 'package:changeApp/models/user.dart';
import 'package:changeApp/service/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  final _formKey = GlobalKey<FormState>();
  String heading = "";
  String imagurl = "";
  String text = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Change the welcome Page Credentials'),
        ),
        body: Container(
            // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    SizedBox(height: 30.0),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter updated Heading',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue[500], width: 2.0),
                              borderRadius: BorderRadius.circular(3.0))),
                      validator: (val) =>
                          val.isEmpty ? 'Enter Heading to change' : null,
                      autocorrect: true,
                      cursorColor: Colors.amber,
                      onChanged: (value) {
                        setState(() => heading = value);
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Enter the updating text',
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 2.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue[500], width: 2.0),
                                borderRadius: BorderRadius.circular(3.0))),
                        validator: (val) =>
                            val.isEmpty ? 'Enter text to change on page' : null,
                        autocorrect: true,
                        cursorColor: Colors.red,
                        onChanged: (val) {
                          setState(() {
                            text = val;
                          });
                        }),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          DatabaseService()
                              .updateUserData(heading, "imageurl", text);
                        } else {
                          error = "Enter details";
                        }
                      },
                      child: Text('Update'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Exit Page"),
                    )
                  ]),
            )));
  }
}
