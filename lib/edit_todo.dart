import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:todolist/todo.dart';
import 'package:todolist/todo_dialog.dart';
import 'package:todolist/todos.dart';

class EditTodoPage extends StatefulWidget {
  final Todo todo;
  const EditTodoPage({Key? key, required this.todo}) : super(key: key);

  @override
  _EditTodoPageState createState() => _EditTodoPageState();
}

class _EditTodoPageState extends State<EditTodoPage> {
  final _formKey = GlobalKey<FormState>();
  String title;
  String description;
  _EditTodoPageState()
      : title = '',
        description = '';
  @override
  void initState() {
    super.initState();
    title = widget.todo.title;
    description = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Edit Task'),
        backgroundColor: Color(0xff8daaa6),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Add_Task_Dialog(
            title: title,
            description: description,
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedDescription: (description) =>
                setState(() => this.description = description),
            onSavedTodo: saveTodo,
          ),
        ),
      ));

  void saveTodo() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    } else {
      final todo = Todo(
        id: DateTime.now.toString(),
        title: title,
        description: description,
        createdTime: DateTime.now(),
      );
      final provider = Provider.of<TodoProvider>(context, listen: false);
      provider.updateTodo(widget.todo, title, description);

      Navigator.of(context).pop();
    }
  }
}
