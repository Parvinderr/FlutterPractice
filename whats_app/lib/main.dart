import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void navigateRoute() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => WhatsPage(),
      ),
    );
  }

  @override
  void initState() {
    setState(() {
      Timer(Duration(milliseconds: 50), navigateRoute);
      debugPrint('hello');
    }); super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'images/MAIN-whatsapp.jpg',
              color: Colors.grey[100],
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ],
      ),
    );
  }
}
