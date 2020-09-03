import 'package:changeApp/home.dart';
import 'package:changeApp/landing_page.dart';
import 'package:changeApp/landingpage.dart';
import 'package:changeApp/models/user.dart';
import 'package:changeApp/screens/References.dart';
import 'package:changeApp/screens/authenticate.dart';
import 'package:changeApp/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // return Home or authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return MyHomePage();
    }
  }
}
