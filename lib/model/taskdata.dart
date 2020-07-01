import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _listTasks = [
    Task(name: 'Buy Milk', isDone: false),
    // Task(name: 'Buy Chocolate', isDone: false),
    Task(name: 'Buy FFXIV', isDone: false)
  ];

  // This is to create the ListTasks to be private and cannot change.
  // check the reasons behind in the :Adding To-Do List Task chapter by Angela.
  UnmodifiableListView<Task> get listTasks {
    return UnmodifiableListView(_listTasks);
  }

  int get taskCount {
    return _listTasks.length;
  }

  void addListTasks(String newTask) {
    //setState(() {
    _listTasks.add(Task(name: newTask, isDone: false));
    notifyListeners();
    //});
  }

  void toggleDoneByTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void deleteListTasks(index) {
    //setState(() {
    _listTasks.removeAt(index);
    notifyListeners();
    //});
  }
}
