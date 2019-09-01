import 'package:flutter/material.dart';

class ListOfToDo extends StatelessWidget {
  ListOfToDo({this.text, this.isChecked = false, this.checkBoxCallback});
  final String text;
  final bool isChecked;
  final Function checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallback,
        value: isChecked,
      )
    );
  }
}


