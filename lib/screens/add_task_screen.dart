import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

// ignore: use_key_in_widget_constructors
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    late String newTaskTitle;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 30.0, color: Colors.blue[900]),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
                // ignore: avoid_print
              },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue[900],
            ),
          ],
        ),
      ),
    );
  }
}
