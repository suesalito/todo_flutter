import 'package:flutter/material.dart';
import 'package:todo_flutter/components/checkbox_object.dart';
import 'package:todo_flutter/model/task.dart';

class ListViewObject extends StatelessWidget {
//   const ListViewObject({
//     Key key,
//   }) : super(key: key);

  ListViewObject({@required this.listTasks});

  final List<Task> listTasks;
  //final ValueChanged<bool> toggleCallBack;

//   @override
//   _ListViewObjectState createState() => _ListViewObjectState();
// }

// class _ListViewObjectState extends State<ListViewObject> {
//   List<Task> listTasks = [
//     Task(name: 'Buy Milk', isDone: false),
//     Task(name: 'Buy Chocolate', isDone: false),
//     Task(name: 'Buy FFXIV', isDone: false)
//   ];

  //   void checkBoxCallBack(bool value) {
  //   setState(() {
  //     checkValue = value;
  //     print(checkValue);
  //   });
  // }

  // List<CheckBoxObject> createCheckBoxList() {
  //   List<CheckBoxObject> l = [];
  //   for (Task x in listTasks) {
  //     print(x.name);
  //     l.add(CheckBoxObject(
  //       checkBoxText: x.name,
  //       checkValue: x.isDone,
  //       toggleCallBack: (bool value) {
  //         setState(() {
  //           x.isDone = value;
  //         });
  //       },
  //     ));
  //   }
  //   return l;
  // }

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    //   children: createCheckBoxList(), // -> This is completely work but Listview has the ListviewBuilder to help this case
    // so that you dont have to worry about to write the for loop yourself.
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemBuilder: (context, index) {
        return CheckBoxObject(
            checkBoxText: listTasks[index].name,
            checkValue: listTasks[index].isDone,
            // toggleCallBack: (value){
            //   listTasks[index].toggleDone();
            // },
            toggleCallBack: (value) {
              listTasks[index].toggleCallBack();
            }
            // toggleCallBack: (bool value) {
            //   // setState(
            //   //   () {
            //   //     listTasks[index].toggleDone();
            //   //   },
            //   // );
            // },
            );
      },
      itemCount: listTasks.length, //when you use the listview.builder, you have to specific lenght of the object.
    );
    // ),
    // );
  }
}
