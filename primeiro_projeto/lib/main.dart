import 'package:flutter/material.dart';
import 'package:refazendo_projeto/data/task_inherited.dart';
import 'package:refazendo_projeto/screens/initial_screen.dart';
import 'package:refazendo_projeto/themes/my_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:myTheme,
      home:  TaskInherited(child: const InitialScreen()),
    );
  }
}
