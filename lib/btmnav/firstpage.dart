import 'package:flutter/material.dart';
import 'package:zero/btmnav/home.dart';
import 'package:zero/btmnav/profile.dart';
import 'package:zero/btmnav/settings.dart';

class Firstpage extends StatefulWidget {
   Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
   //keeping track of selected index
   int _selectedIndex= 0;

  //update index
   void _navigateBottomBar(int index){
     setState(() {
       _selectedIndex=index;
     });
   }

   final List pages=
       [
         Home(),
         Profile(),
         Settings(),
       ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st page"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ]
      ),

    );
  }
}
