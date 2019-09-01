import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_dodo_app/data/task_data.dart';
import 'package:to_dodo_app/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}