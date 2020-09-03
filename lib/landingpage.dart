import 'package:changeApp/first.dart';
import 'package:changeApp/second.dart';
import 'package:changeApp/third.dart';
import 'package:changeApp/welcomescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
    Tab(text: 'Tab1'),
    Tab(text: 'Tab2'),
    Tab(text: 'Tab3'),
  ];
  TabController _tabController;
  ScrollController _scrollController;
  bool fixedScroll;
  Widget _buildCard() => new Container(
        child: new Container(
          margin: EdgeInsets.only(left: 30, top: 50, bottom: 550, right: 30),
          color: Colors.lightBlue,
          child: new Center(
            child: new Text("Card"),
          ),
        ),
      );

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_smoothScrollToTop);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListener() {
    if (fixedScroll) {
      _scrollController.jumpTo(0);
    }
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(microseconds: 300),
      curve: Curves.ease,
    );

    setState(() {
      fixedScroll = _tabController.index == 2;
    });
  }

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
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Container(
                width: 300,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                color: Colors.grey,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/user_male2-512.png'),
                      radius: 35.0,
                    ),
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
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('John Smith')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ2oHJjPCFrHbB4RpQYfcPdLT2dhvGUFGTcXg&usqp=CAU'),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 5,
                                child: InkWell(
                                    child: Text(
                                      "Go",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => WelcomeScreen(),
                                        ),
                                      );
                                    }),
                              ),
                              Positioned(
                                bottom: -5,
                                left: 15,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.trending_flat,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WelcomeScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTMVSK002MYAH_e5iPGYSw4ccLFMH7Gl0gaWw&usqp=CAU'),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 5,
                                child: InkWell(
                                    child: Text(
                                      "Go",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => WelcomeScreen(),
                                        ),
                                      );
                                    }),
                              ),
                              Positioned(
                                bottom: -5,
                                left: 15,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.trending_flat,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WelcomeScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQyOn19tnEm9voJ-bvCzBjULOvBuPhJWZWoA&usqp=CAU'),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 5,
                                child: InkWell(
                                    child: Text(
                                      "Go",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => WelcomeScreen(),
                                        ),
                                      );
                                    }),
                              ),
                              Positioned(
                                bottom: -5,
                                left: 15,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.trending_flat,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WelcomeScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.redAccent,
                isScrollable: true,
                tabs: myTabs,
              ),
            ),
          ];
        },
        body: Container(
          child: TabBarView(
            controller: _tabController,
            children: [
              FirstScren(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
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
