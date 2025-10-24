import 'package:flutter/material.dart';

class Todopage extends StatefulWidget {
  const Todopage({super.key});

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {

  TextEditingController myController = TextEditingController();


  String greeetingMessage="";

  void greetUser(){
    String userName= myController.text;
    setState(() {
      greeetingMessage= "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(greeetingMessage),
                  TextField(
                    controller: myController, // gives access to whatever user typed
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type name here",
                    ),
                  ),
                  ElevatedButton(onPressed: greetUser, child: Text("Tap"))
                ],
              ),
            ),
      ),
    );
  }
}
