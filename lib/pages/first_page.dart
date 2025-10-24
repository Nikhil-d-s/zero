import 'package:flutter/material.dart';
import 'package:zero/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Text("1st page", style: TextStyle(color: Colors.white, ),),
      backgroundColor: Colors.deepPurple,
    ),
      body: Center(
      child: ElevatedButton(
            child: Text("Go to second page"),
            onPressed: () {
              //without routes we had to write so much
              // Navigator.push(context, MaterialPageRoute(
              // builder: (context) => SecondPage(),
          //   ),
          // );
              Navigator.pushNamed(context, '/secondpage');
            },
      ),
      ),
    );
  }
}

//main.dart initally we used home for scaffold
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//
//   void userTapped(){
//     print("user tapped");
//   }
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(),
//     );
//   }
// }
