import 'package:flutter/material.dart';

class CheckBoxObject extends StatelessWidget {
  const CheckBoxObject({Key key, @required this.checkBoxText, @required this.checkValue, @required this.toggleCallBack})
      : super(key: key);

  final String checkBoxText;
  final ValueChanged<bool> toggleCallBack;

//   @override
//   _CheckBoxObjectState createState() => _CheckBoxObjectState();
// }

// class _CheckBoxObjectState extends State<CheckBoxObject> {
  final bool checkValue;

  // void checkBoxCallBack(bool value) {
  //   setState(() {
  //     checkValue = value;
  //     print(checkValue);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
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
      title: Text(
        checkBoxText,
        style: checkValue ? TextStyle(decoration: TextDecoration.lineThrough) : null,
      ),
      trailing: TaskCheckBox(
        checkValue: checkValue,
        // Below is the Short term if you dont want to declare the call back function.
        // toggleCallBack: (bool newValue) {
        //   setState(() {
        //     checkValue = newValue;
        //     print(checkValue);
        //   });
        // },
        toggleCallBack: toggleCallBack,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    Key key,
    @required this.checkValue,
    @required this.toggleCallBack,
  }) : super(key: key);

  final bool checkValue;

  //below is shot term of the function
  //final Function toggleCallBack;
  //below is a type def that can tell update class that it is the callback function that require bool.
  final ValueChanged<bool> toggleCallBack;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.pink,
      value: checkValue,
      hoverColor: Colors.pink,

      // onChanged: (bool newValue) {
      //   setState(() {
      //     checkValue = newValue;
      //     print(checkValue);
      //   });
      // },
      onChanged: toggleCallBack,
    );
  }
}
