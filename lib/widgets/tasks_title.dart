import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  // void toggleCheckbox(bool newvalue) {
  //   setState(() {
  //     isChecked = newvalue;
  //   });
  // }
  TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$taskTitle',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value){
          checkboxCallBack(value);
        },
      ),
    );
  }
}
