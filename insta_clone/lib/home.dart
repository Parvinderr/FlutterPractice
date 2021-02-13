import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: true,
      showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey[500],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 16,
      iconSize: 26,
      unselectedFontSize: 0.0,
      currentIndex: _value,
      selectedItemColor: Colors.grey[900],
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.grey[300],
      elevation: 14.0,
      onTap: (value) {
        setState(() {
          _value = value;
          print('$_value');
        });
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          icon: Icon(
            Icons.home,
            size: _value == 0 ? 30.0 : 22.0,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.youtube_searched_for,
            color: Colors.black,
          ),
          icon: Icon(
            Icons.search,
            size: _value == 1 ? 30.0 : 22.0,
          ),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.add_photo_alternate,
            color: Colors.black,
          ),
          icon: Icon(
            Icons.add_a_photo,
            size: _value == 2 ? 28.0 : 22.0,
          ),
          title: Text('Add'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            size: _value == 3 ? 30.0 : 22.0,
          ),
          activeIcon: Icon(
            Icons.notifications_active,
            color: Colors.black,
          ),
          title: Text('Likes'),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.account_box,
            color: Colors.black,
          ),
          icon: Icon(
            Icons.account_circle,
            size: _value == 4 ? 28.0 : 22.0,
          ),
          title: Text('Profile'),
        ),
      ],
    );
  }
}
