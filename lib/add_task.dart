import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'todo_dialog.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Task',
              style: TextStyle(),
            ),
            const SizedBox(height: 8),
            Add_Task_Dialog(
              onChangedTitle: (title) => setState(() => this.title = title),
              OnChangedDescription: (description) =>
                  setState(() => this.description = description),
              onChangedDescription: (String value) {},
              onSavedTodo: () {},
            )
          ],
        ),
      );
}
