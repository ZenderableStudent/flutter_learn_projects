import 'package:flutter/material.dart';
import 'package:to_dodo_app/components/task_tile.dart';
import 'package:to_dodo_app/components/task.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;
  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListOfToDo(
          text: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallback: (bool value) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
