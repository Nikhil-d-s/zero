import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList= [];

  //reference the box
  final _myBox= Hive.box('myBox');

  //for first time ever opening the data
  void createInitialData(){
    toDoList = [
      ["Learn Flutter", false],
      ["Go TO Hackathons", false]
    ];
  }


  //loading the predata if present
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
void updateDatabase(){
    _myBox.put("TODOLIST",toDoList);
}

}