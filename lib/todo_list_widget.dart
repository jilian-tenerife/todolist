import 'package:flutter/src/widgets/framework.dart';
import 'package:todolist/todo.dart';
import 'package:todolist/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TodoWidget(
        todo: Todo(
      createdTime: DateTime.now(),
      title: 'Cook Eggs',
    ));
  }
}
