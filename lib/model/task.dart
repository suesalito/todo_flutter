import 'package:flutter/material.dart';

class Task {
  final String name;
  bool isDone;
  Function toggleCallBack;

  Task({@required this.name, @required this.isDone, this.toggleCallBack});

  void toggleDone() {
    isDone = !isDone;
    //notifyListeners();
  }
}
