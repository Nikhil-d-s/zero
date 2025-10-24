import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
            ),
            Container(
              height: 700,
              width: 200,
              color: Colors.deepPurple[800],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
            ),
          ],
        ),
      ),
    );
  }
}

