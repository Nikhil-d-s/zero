import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(child: Text("Tap Me"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}