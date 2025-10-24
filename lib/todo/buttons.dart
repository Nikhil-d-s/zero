import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String text; // button name

  VoidCallback onPressed; //gesture detector returns nothing

  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColorLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // <-- rounded corners
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.deepPurple), // optional: white text
      ),
    );

  }
}
