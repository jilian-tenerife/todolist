import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/todos.dart';

import 'Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodoProvider(),
        child: MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Color(0xffd5d7cc)),
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        ),
      );
}
