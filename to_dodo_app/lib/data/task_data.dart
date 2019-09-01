import 'package:flutter/widgets.dart';
import 'task.dart';
import 'dart:collection';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Buy eggs'),
    Task(name: 'Buy apples'),
    Task(name: 'Buy bananas'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String task) {
    _tasks.add(Task(name: task));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}