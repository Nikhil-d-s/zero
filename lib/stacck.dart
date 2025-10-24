import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            alignment: Alignment.bottomRight,
            children: [
              //big box
              Container(
                height: 300,
                width: 300,
                color: Colors.deepPurple[400],
              ),
              //medium
              Container(
                height: 200,
                width: 200,
                color: Colors.deepPurple[200],
              ),
              //small
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple,
              ),
            ],
          )
      ),
    );
  }
}