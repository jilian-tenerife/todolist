import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
      Container(),
      Container(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('MY TODO LIST'),
        backgroundColor: Color(0xff8daaa6),
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
