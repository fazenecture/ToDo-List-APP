import 'package:flutter/material.dart';
import 'tasks_title.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> task = [
    Task(name: 'Hello'),
    Task(name: 'Jaaa naa'),
    Task(name: 'GUnda'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: task[index].isDone,
            taskTitle: task[index].name,
            checkboxCallBack: (checkboxState) {
              setState(() {
                task[index].toggleDone();
              });
            });
      },
      itemCount: task.length,
    );
  }
}
