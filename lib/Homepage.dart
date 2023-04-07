import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'add_task.dart';
import 'completed_list_widget.dart';
import 'todo_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      CompletedListWidget(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY TODO LIST'),
        backgroundColor: Color(0xff8daaa6),
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff99a285),
        onPressed: () => showDialog(
            context: context,
            builder: (context) => AddTask(),
            barrierDismissible: false),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff8daaa6),
          unselectedItemColor: const Color(0xffcacda5),
          selectedItemColor: const Color(0xffcacda5),
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
                selectedIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.fact_check_outlined,
              ),
              label: "List",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.check,
                ),
                label: "Completed")
          ]),
    );
  }
}
