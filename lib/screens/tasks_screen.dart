import 'package:flutter/material.dart';
import 'package:todo_flutter/components/listview_object.dart';
import 'package:todo_flutter/screens/buttomsheetscreen.dart';
import 'package:todo_flutter/model/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/model/taskdata.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // void addListTasks(String newTask) {
  //   setState(() {
  //     listTasks.add(Task(name: newTask, isDone: false));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //List<Task> listTasks = Provider.of<TaskData>(context).listTasks;
    //TaskData x = Provider.of<TaskData>(context, listen: false); // can define like this.

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Scaffold(
          backgroundColor: Colors.pink,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final String returnName = await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent, //set the edges transparent. better than set it hard code ARGB
                //backgroundColor: Color.fromARGB(255, 117, 117, 117),
                builder: (context) {
                  return ButtomSheetScreen();
                },
              );
              if (returnName != null && returnName != '') {
                print(returnName);
                //addListTasks(returnName);
                taskData.addListTasks(returnName);
              }
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.add),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.list),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Todoey',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${taskData.taskCount} Tasks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListViewObject(
                    //listTasks: listTasks,
                    listTasks: List<Task>.generate(taskData.listTasks.length, (int index) {
                      return Task(
                          // name: Provider.of<TaskData>(context, listen: false).listTasks[index].name,
                          // isDone: Provider.of<TaskData>(context, listen: false).listTasks[index].isDone,
                          // toggleCallBack: () {
                          //   setState(() {
                          //     Provider.of<TaskData>(context, listen: false).listTasks[index].toggleDone();
                          //   });
                          // });
                          name: taskData.listTasks[index].name,
                          isDone: taskData.listTasks[index].isDone,
                          toggleCallBack: () {
                            //setState(() {
                            taskData.toggleDoneByTask(taskData.listTasks[index]);
                            //});
                          });
                    }),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  // height: 300,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
