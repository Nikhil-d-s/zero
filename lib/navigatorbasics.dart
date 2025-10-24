import 'package:flutter/material.dart';
import 'package:zero/pages/first_page.dart';
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
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
      },
      //routes make navigator easier
    );
  }
}

//page one body initially
// body: Center(
// child: ElevatedButton(
// child: Text("Go to second page"),
// onPressed: () {
// //without routes we had to write so much
// // Navigator.push(context, MaterialPageRoute(
// // builder: (context) => SecondPage(),
// //   ),
// // );
// Navigator.pushNamed(context, '/secondpage');
// },
// ),
// ),