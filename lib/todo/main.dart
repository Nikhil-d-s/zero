import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zero/todo/firstpage.dart';

void main() async{

  //intiallise the hive
  await Hive.initFlutter();
  
  //open a box
  var box= await Hive.openBox('myBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
      theme: ThemeData(primaryColor: Colors.deepPurple[200]),
    );
  }
}
