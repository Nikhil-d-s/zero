import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius:BorderRadius.circular(20)
          ),
          padding: EdgeInsets.all(25),
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
  }
}
