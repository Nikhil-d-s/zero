import 'package:flutter/material.dart';
import 'package:zero/Drawer/settings.dart';
import 'package:zero/pages/second_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home page", style: TextStyle(color: Colors.white, ),),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48,
                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("S E A R C H"),
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);// to make it disappear
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],

        ),
      ),

    );
  }
}

//required main

// import 'package:flutter/material.dart';
// import 'package:zero/Drawer/home.dart';
// import 'package:zero/Drawer/settings.dart';
// import 'package:zero/pages/second_page.dart';
//
// void main() {
//   runApp(MyApp());
// }

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
//       home: Home(),
//       routes: {
//         '/homepage': (context) => Home(),
//         '/settings': (context) => Settings(),
//       },
//       //routes make navigator easier
//     );
//   }
// }