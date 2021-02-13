import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rightDice = 1;
  int leftDice = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice App',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontFamily: 'Tangerine')),
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftDice.png'),onPressed: (){
                    setState(() {
                      leftDice =Random().nextInt(6)+1;
                      print('Left');
                    });
                },
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    rightDice = Random().nextInt(6)+1;
                    print('Right');
                  });
                  },
                  child: Image.asset('images/dice$rightDice.png'),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
