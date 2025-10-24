
import 'package:flutter/material.dart';
import 'package:zero/Drawer/home.dart';
import 'package:zero/Drawer/settings.dart';
import 'package:zero/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

   void userTapped(){
     print("user tapped");
   }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/homepage': (context) => Home(),
        '/settings': (context) => Settings(),
      },
      //routes make navigator easier
    );
  }
}