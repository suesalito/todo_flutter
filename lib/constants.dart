import 'package:flutter/material.dart';

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
  hintText: 'Type your task name here...',
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.cyan),
  ),
  //focusColor: Colors.pink,
  //border: InputBorder.none,
);
