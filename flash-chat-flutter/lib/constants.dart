import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kBorderRadius = BorderRadius.all(Radius.circular(32.0));
const kContentPadding = EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0);


const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your password',
  contentPadding: kContentPadding,
  border: OutlineInputBorder(
    borderRadius: kBorderRadius,
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: kBorderRadius,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: kBorderRadius,
  ),
);