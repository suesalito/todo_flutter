import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> listTasks = [
    Task(name: 'Buy Milk', isDone: false),
    // Task(name: 'Buy Chocolate', isDone: false),
    // Task(name: 'Buy FFXIV', isDone: false)
  ];

  void addListTasks(String newTask) {
    //setState(() {
    listTasks.add(Task(name: newTask, isDone: false));
    notifyListeners();
    //});
  }
}
