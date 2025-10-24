import 'package:flutter/material.dart';
import 'package:zero/btmnav/firstpage.dart';
import 'package:zero/btmnav/profile.dart';
import '../btmnav//settings.dart';
import '../btmnav//home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
      routes: {
        '/homepage': (context) => Home(),
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
      },
      //routes make navigator easier
    );
  }
}