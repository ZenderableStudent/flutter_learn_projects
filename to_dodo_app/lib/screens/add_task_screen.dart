import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/scheduler.dart';
import 'package:to_dodo_app/components/task.dart';
import 'package:to_dodo_app/components/tasks_list.dart';

String taskName;

class AddTaskScreen extends StatelessWidget {

  AddTaskScreen({this.addTaskCallback});
  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add task',
            style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            textAlign: TextAlign.center,
          ),
          TextField(
            onChanged: (value) {
              taskName = value;
            },
            textInputAction: TextInputAction.done,
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                ),
              ),
              hoverColor: Colors.lightBlueAccent,
              focusColor: Colors.lightBlueAccent,
            ),
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              if(taskName != null) {
                addTaskCallback(taskName);
                taskName = null;
              } else {
//                showDialog(context: context, builder: (BuildContext context) {
//                  return AlertDialog(
//                    titlePadding: EdgeInsets.all(20.0),
//                    title: new Text("Add your task!"),
//                    actions: <Widget>[
//                      // usually buttons at the bottom of the dialog
//                      new FlatButton(
//                        child: new Text("Close"),
//                        onPressed: () {
//                          Navigator.of(context).pop();
//                        },
//                      ),
//                    ],
//                  );
//                });
                Alert(
                  context: context,
                  type: AlertType.info,
                  title: "TODOEY WARNING",
                  desc: "Please provide a text for your task!",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.lightBlueAccent,
                      radius: BorderRadius.circular(0.0),
                    ),
                  ],
                ).show();
                print('Nothing in textfield');
              }
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
    );
  }
}
