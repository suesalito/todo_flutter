import 'package:flutter/material.dart';

class CheckBoxObject extends StatelessWidget {
  const CheckBoxObject({Key key, @required this.checkBoxText}) : super(key: key);

  final String checkBoxText;

  @override
  Widget build(BuildContext context) {
    bool checkValue = false;
    // return Container(
    //   margin: EdgeInsets.all(5),
    //   child: Row(
    //     children: <Widget>[
    //       //Icon(Icons.check_box_outline_blank),
    //       Checkbox(
    //           value: checkValue,
    //           onChanged: (value) {
    //             checkValue = value;
    //           }),
    //       SizedBox(
    //         width: 20,
    //       ),
    //       Text(checkBoxText),
    //     ],
    //   ),
    // );
    return ListTile(
      title: Text(checkBoxText),
      trailing: Checkbox(value: checkValue, onChanged: null),
    );
  }
}
