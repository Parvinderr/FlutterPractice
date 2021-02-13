import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // showSemanticsDebugger: true,
      // debugShowMaterialGrid: true,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TextStyle _my = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    fontStyle: FontStyle.italic,
    color: Colors.black87,
  );
  List<Color> rand = [
    Colors.orange,
    Colors.green,
    Colors.brown,
    Colors.indigo,
    Colors.purple,
  ];
  TextStyle _your = TextStyle(
    color: Colors.black87,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    fontFeatures: [
      FontFeature.randomize(),
      FontFeature.slashedZero(),
    ],
  );

  TextStyle _you = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    fontStyle: FontStyle.italic,
    color: Colors.black87.withOpacity(0.83),
  );
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(1),
        title: Container(
          padding: EdgeInsets.all(6),
          margin: EdgeInsets.all(2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Name',
                  style: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              IconButton(
                visualDensity: VisualDensity(horizontal: -2, vertical: -3),
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: <Widget>[
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 50,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 70,
                              left: 70,
                            ),
                            child: Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blueAccent,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding:
                            EdgeInsets.only(bottom: 20.0, left: 40.0, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(6),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    '2',
                                    style: _my,
                                  ),
                                  Text(
                                    'Posts',
                                    style: _you,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(4),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    '79',
                                    style: _my,
                                  ),
                                  Text(
                                    'Followers',
                                    style: _you,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.all(6),
                              margin: EdgeInsets.all(4),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '24',
                                    style: _my,
                                  ),
                                  Text(
                                    'Following',
                                    style: _you,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 4.0,
                  left: 1,
                ),
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Enter Your Bio\n', style: _your),
                      TextSpan(text: 'Hows Your mind\n', style: _your),
                      TextSpan(text: 'Whens your bday', style: _your)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 34,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(color: Colors.black26)),
                child: MaterialButton(
                  child: Text('Edit Your Profile'),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 12),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Story Highlights\n',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: 'Keep Your Favourites Story Here', style: _you)
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey[20],
                  border: Border.all(
                    color: Colors.grey[300],
                  ),
                ),
                child: ListView.builder(
                  // padding: EdgeInsets.only(right: 10, left: 10),
                  reverse: true,
                  primary: true,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                        index == 9
                            ? CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                radius: 10.0,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            : new Container(),
                      ],
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 16),
              TabBar(
                  controller: _tabController,
                  onTap: (i) {
                    print('$i');
                  },
                  tabs: <Widget>[
                    Icon(
                      Icons.grid_on,
                      size: 30,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.group_add,
                      size: 30,
                      color: Colors.black,
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
