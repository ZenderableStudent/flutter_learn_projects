import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:to_dodo_app/data/task.dart';
import 'package:to_dodo_app/data/task_data.dart';
import 'package:provider/provider.dart';

String taskName;

class AddTaskScreen extends StatelessWidget {

//  AddTaskScreen({this.addTaskCallback});
//  final Function addTaskCallback;

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
                Provider.of<TaskData>(context).addTask(taskName);
                //addTaskCallback(taskName);
                taskName = null;
                Navigator.pop(context);
              } else {
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
