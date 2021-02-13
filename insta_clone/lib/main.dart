import 'package:flutter/material.dart';
import 'package:insta_clone/postspage.dart';
// import 'package:insta_clone/profile.dart';
// import 'firstpage.dart';
// import 'loginPage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Post(),
    );
  }
}
