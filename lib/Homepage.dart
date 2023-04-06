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
        title: Text('MY TODO LIST'),
        backgroundColor: Color(0xff8daaa6),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff8daaa6),
          /*unselectedItemColor: Color(0xff),selectedItemColor:Color(0xff)*/
          currentIndex: selectedIndex,
          items: []),
    );
  }
}
