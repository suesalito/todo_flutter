import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'package:todo_flutter/model/taskdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
