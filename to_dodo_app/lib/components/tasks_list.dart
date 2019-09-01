import 'package:flutter/material.dart';
import 'package:to_dodo_app/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_dodo_app/data/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: () {
                Provider.of<TaskData>(context).deleteTask(index);
              },
              child: ListOfToDo(
                text: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (bool value) {
                taskData.updateTask(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
 //taskData = Provider.of<TaskData>(context)