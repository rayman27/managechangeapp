import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.blue[400],
          elevation: 0.0,
        ),
        body: Container(
            color: Colors.blue[100],
            margin: EdgeInsets.all(2.0),
            padding: EdgeInsets.all(2.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Image.asset('assets/Tcs.png'),
                SizedBox(
                  height: 5.0,
                ),
                new Text(
                  'Tata Consultancy Services Limited (TCS)',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 5.0,
                ),
                new Text(
                  ' TCS is an Indian multinational information technology (IT) service and consulting company headquartered in Mumbai, Maharashtra, India. It is a subsidiary of the Tata Group and operates in 149 locations across 46 countries.TCS is the second largest Indian company by market capitalisation.Tata consultancy services is now placed among the most valuable IT services brands worldwide. In 2015, TCS was ranked 64th overall in the Forbes World Most Innovative Companies ranking, making it both the highest-ranked IT services company and the top Indian company. It is the world largest IT services provider. As of 2018, it is ranked eleventh on the Fortune India 500 list. In April 2018, TCS became the first Indian IT company to reach 100 billion in market capitalisation, and second Indian company ever (after Reliance Industries achieved it in 2007) after its market capitalisation stood at ₹6,79,332.81 crore (102.6 billion) on the Bombay Stock Exchange',
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 5.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text('Back to Page'),
                ),
              ],
            )));
  }
}
