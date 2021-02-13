import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'messagescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        title: 'WhatsApp',
        color: Colors.teal,
        debugShowCheckedModeBanner: false,
        home: WhatsPage());
  }
}

class WhatsPage extends StatefulWidget {
  @override
  _WhatsPageState createState() => _WhatsPageState();
}

class _WhatsPageState extends State<WhatsPage> with TickerProviderStateMixin {
  TabController tb;
  Widget time;
  Widget text;
  Widget message;
  Widget image;
  Colors color;
  ListTile cusListTile(text, message, time, color) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MessageScreen(),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundColor: color,
        radius: 28,
      ),
      title: text,
      subtitle: message,
      trailing: time,
    );
  }

  Widget cusText = Text(
    'WhatsApp',
    style: TextStyle(
        fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white),
  );
  Icon cusIcon = Icon(Icons.search);
  @override
  void initState() {
    tb = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        centerTitle: false,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (cusIcon == Icon(Icons.search)) {
                    this.cusText = TextField();
                    this.cusIcon = Icon(Icons.cancel);
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    this.cusText = Text(
                      'WhatsApp',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.white),
                    );
                  }
                });
              },
              focusColor: Colors.grey,
              highlightColor: Colors.grey,
              splashColor: Colors.white54,
              icon: cusIcon,
              color: Colors.white,
              tooltip: "Search",
            ),
          ),
          IconButton(
            onPressed: () {},
            focusColor: Colors.grey,
            highlightColor: Colors.grey,
            splashColor: Colors.white54,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: "Menu",
          )
        ],
        title: cusText,
        bottom: TabBar(
          indicatorColor: Colors.white,
          isScrollable: false,
          tabs: <Widget>[
            SizedBox(
              width: 10,
              height: 40,
              child: Icon(
                Icons.camera_alt,
                size: 18,
              ),
            ),
            SizedBox(
              width: 80,
              height: 40,
              child: Center(
                child: Text(
                  'Chats',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 80,
              height: 40,
              child: Center(
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 80,
              height: 40,
              child: Center(
                child: Text(
                  'Calls',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
          labelPadding: EdgeInsets.only(bottom: 4.0, top: 2.0),
          unselectedLabelColor: Colors.white54,
          controller: tb,
        ),
      ),
      body: TabBarView(
        physics: ScrollPhysics(),
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            iconSize: 18.0,
            tooltip: 'Camera',
          ),
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  cusListTile(
                    Text('NoOne'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.pinkAccent,
                  ),
                  cusListTile(
                    Text('man'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.pink,
                  ),
                  cusListTile(
                    Text('Andy'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.orangeAccent,
                  ),
                  cusListTile(
                    Text('john'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.deepPurple,
                  ),
                  cusListTile(
                    Text('Aman'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.blue,
                  ),
                  cusListTile(
                    Text('Harman'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.green,
                  ),
                  cusListTile(
                    Text('Aman'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.grey,
                  ),
                  cusListTile(
                    Text('Raman'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.black,
                  ),
                  cusListTile(
                    Text('Chaman'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.orange,
                  ),
                  cusListTile(
                    Text('doe'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.brown,
                  ),
                  cusListTile(
                    Text('nammy'),
                    Text('Hello'),
                    Text('9:28'),
                    Colors.deepPurple,
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Status',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          Text(
            'Calls',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          )
        ],
        controller: tb,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 30,
        ),
        elevation: 10.0,
        isExtended: true,
        backgroundColor: Colors.teal,
      ),
    );
  }
}
