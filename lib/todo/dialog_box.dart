import 'package:flutter/material.dart';
import 'package:zero/todo/buttons.dart';

class DialogBox extends StatelessWidget {

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple,
      content: Container(

        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input

            TextField(
              controller: controller,
              style: TextStyle(color: Colors.white), // makes entered text white
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent, // keep background transparent (or use a color)
                hintText: "Add a new task",
                hintStyle: TextStyle(color: Colors.white70), // hint text in lighter white
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2), // white border
                  borderRadius: BorderRadius.circular(12), // rounded corners
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8,),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
