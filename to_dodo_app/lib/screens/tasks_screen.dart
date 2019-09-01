import 'package:to_dodo_app/data/task_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:to_dodo_app/components/tasks_list.dart';
import 'package:to_dodo_app/constants.dart';
import 'package:to_dodo_app/screens/add_task_screen.dart';
import 'package:to_dodo_app/data/task.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: kTitleTaskMargin,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 50.0,
                    color: Colors.lightBlueAccent,
                  ),
                  radius: 30.0,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderRadius,
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
