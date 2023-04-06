import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todolist/todo.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;
  const TodoWidget({
    required this.todo,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Slidable(
          key: Key(todo.id ?? 'default_value'),
          startActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                label: 'Edit',
                icon: Icons.edit,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                label: 'Delete',
                icon: Icons.delete,
                backgroundColor: Colors.red,
              ),
            ],
          ),
          child: buildTodo(),
        ),
      ),
    );
  }

  Widget buildTodo() => Container(
        color: Color(0xff99a285),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              activeColor: Color(0xff8daaa6),
              checkColor: Color(0xff99a285),
              value: todo.isDone,
              onChanged: (_) {},
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                if (todo.description.isNotEmpty)
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      todo.description,
                      style: TextStyle(fontSize: 20, height: 1.5),
                    ),
                  )
              ],
            ))
          ],
        ),
      );
}
