import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final void Function()? longPressCallback;
  // ignore: use_key_in_widget_constructors
  TaskTile(
      {this.isChecked = false,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      // ignore: prefer_const_constructors
      title: Text(
        taskTitle,
        // ignore: prefer_const_constructors
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.blue[900],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
