import 'package:flutter/material.dart';
import 'package:insta_clone/firstpage.dart';
import 'home.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        backgroundColor: Colors.white70.withOpacity(0.54),
        elevation: 10.0,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
            fontFamily: 'Tangerine',
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePageAnimation(),
                  ),
                );
              },
              icon: Transform.translate(
                offset: Offset(-2.0, 4.0),
                child: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              Container(
                height: 74,
                color: Colors.grey,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(4),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                            ),
                          ),
                          index == 0
                              ? Positioned(
                                  top: 76,
                                  left: 45,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                      // shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 18,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),
                                )
                              : new Container(),
                        ],
                      );
                    },
                    itemCount: 12,
                  ),
                ),
              ),
              Container(
                height: size.height - 50,
                child: ListView.builder(
                  reverse: true,
                  itemBuilder: (context, index) {
                    return _posts();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _posts() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(color: Colors.grey),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: <Widget>[
          Container(
            // padding: EdgeInsets.all(4),
            // margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(color: Colors.white54),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Name'),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 460,
            width: double.infinity,
            // margin: EdgeInsets.all(4),
            // decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text('NAme'),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white38),
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.link),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
