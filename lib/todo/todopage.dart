import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zero/todo/databasetodo.dart';
import 'package:zero/todo/dialog_box.dart';
import 'package:zero/todo/todo_tile_util.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {

  //reference the hive box
  final _myBox= Hive.box('myBox');

  //todo database
  ToDoDatabase db= ToDoDatabase();

  //checking the initial state of app for database
  @override
  void initState() {

    //if this is the first time opening the app
    if(_myBox.get("TODOLIST") == null){
      db.createInitialData();
    }else{
      //there already exists data
      db.loadData();
    }

    super.initState();
  }

  //text editing controller for dialog box
  final _controller = TextEditingController();

  //list of todo task

  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1]= !db.toDoList[index][1];
    });
    db.updateDatabase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear(); //clears anything written beforehand when we open dialogbox
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }

  // create a new task
  void createNewTask(){
    showDialog(
        context: context,
        builder: (context) {
            return DialogBox(
              controller: _controller,
              onSave: saveNewTask,
              onCancel: () => {
                Navigator.of(context).pop(),
              }
            );
        },
    );
  }

  void deleteTask(int index){
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("Todo List"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
                taskName: db.toDoList[index][0],
                taskCompleted: db.toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value!, index),
                deleteFunction: (context) => deleteTask(index),
            );
          }
      ),
    );
  }
}

//without listview.builder and checkbox functionality

// import 'package:flutter/material.dart';
// import 'package:zero/todo/todo_tile_util.dart';
//
// class Todo extends StatefulWidget {
//   const Todo({super.key});
//
//   @override
//   State<Todo> createState() => _TodoState();
// }
//
// class _TodoState extends State<Todo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[200],
//       appBar: AppBar(
//         title: Text("Todo List"),
//         elevation: 0,
//       ),
//       body: ListView(
//         children: [
//           TodoTile(
//             taskName: "Make Tutorial",
//             taskCompleted: true,
//             onChanged: (p0) {},
//           ),
//           TodoTile(
//             taskName: "Do exercise",
//             taskCompleted: true,
//             onChanged: (p0) {},
//           ),
//           TodoTile(
//             taskName: "Make E commerce",
//             taskCompleted: true,
//             onChanged: (p0) {},
//           ),
//         ],
//       ),
//     );
//   }
// }

//without hive
// import 'package:flutter/material.dart';
// import 'package:zero/todo/dialog_box.dart';
// import 'package:zero/todo/todo_tile_util.dart';
//
// class Todo extends StatefulWidget {
//   const Todo({super.key});
//
//   @override
//   State<Todo> createState() => _TodoState();
// }
//
// class _TodoState extends State<Todo> {
//
//   //reference the hive box
//
//   //text editing controller for dialog box
//   final _controller = TextEditingController();
//
//   //list of todo task
//   List toDOList= [
//     ["Make tutorial", false],
//     ["Learn Flutter", false],
//     ["Make E-commerce App", false]
//   ];
//
//   //checkbox was tapped
//   void checkBoxChanged(bool? value, int index) {
//     setState(() {
//       toDOList[index][1]= !toDOList[index][1];
//     });
//   }
//
//   void saveNewTask() {
//     setState(() {
//       toDOList.add([_controller.text, false]);
//       _controller.clear(); //clears anything written beforehand when we open dialogbox
//     });
//     Navigator.of(context).pop();
//   }
//
//   // create a new task
//   void createNewTask(){
//     showDialog(
//       context: context,
//       builder: (context) {
//         return DialogBox(
//             controller: _controller,
//             onSave: saveNewTask,
//             onCancel: () => {
//               Navigator.of(context).pop(),
//             }
//         );
//       },
//     );
//   }
//
//   void deleteTask(int index){
//     setState(() {
//       toDOList.removeAt(index);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[200],
//       appBar: AppBar(
//         title: Text("Todo List"),
//         elevation: 0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: createNewTask,
//         child: Icon(Icons.add),
//       ),
//       body: ListView.builder(
//           itemCount: toDOList.length,
//           itemBuilder: (context, index) {
//             return TodoTile(
//               taskName: toDOList[index][0],
//               taskCompleted: toDOList[index][1],
//               onChanged: (value) => checkBoxChanged(value!, index),
//               deleteFunction: (context) => deleteTask(index),
//             );
//           }
//       ),
//     );
//   }
// }
