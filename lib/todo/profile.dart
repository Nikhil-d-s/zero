import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            Icons.person,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
  }
}
