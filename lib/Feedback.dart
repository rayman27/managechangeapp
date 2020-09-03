import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Feedbackform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: new LaunchUrlDemo(),
    );
  }
}

class LaunchUrlDemo extends StatefulWidget {
  LaunchUrlDemo({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _LaunchUrlDemoState createState() => _LaunchUrlDemoState();
}

class _LaunchUrlDemoState extends State<LaunchUrlDemo> {
  Future<void> _launched;
  //String phoneNumber = '';
  String _launchUrl = 'https://www.jotform.com/build/202221356300437';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: const Text('LAUNCH'),
              onPressed: () {
                _launchInBrowser(_launchUrl);
              },
            ),
          ],
        ),
      ),
    );
  }
}
