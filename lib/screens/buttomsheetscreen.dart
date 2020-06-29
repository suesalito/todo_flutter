import 'package:flutter/material.dart';
import 'package:todo_flutter/constants.dart';

class ButtomSheetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: (MediaQuery.of(context).size.height * 0.7),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: const Text(
                'Add Task',
                style: TextStyle(fontSize: 35, color: Colors.pink, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: TextField(
                autofocus: true, // make the input curcor active right away
                cursorColor: Colors.cyan,
                onChanged: (value) {
                  print(value);
                },
                decoration: kMessageTextFieldDecoration,
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)),
              color: Colors.pink[200],
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
