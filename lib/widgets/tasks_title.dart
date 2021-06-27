import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  // void toggleCheckbox(bool newvalue) {
  //   setState(() {
  //     isChecked = newvalue;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hello World',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue!;
          });
        },
      ),
    );
  }
}
