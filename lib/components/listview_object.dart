import 'package:flutter/material.dart';
import 'package:todo_flutter/components/checkbox_object.dart';

class ListViewObject extends StatelessWidget {
  const ListViewObject({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      children: <Widget>[
        CheckBoxObject(checkBoxText: 'Check Box 1'),
        CheckBoxObject(checkBoxText: 'Check Box 2'),
        CheckBoxObject(checkBoxText: 'Check Box 3'),
      ],
    );
  }
}
