import 'package:flutter/material.dart';
import 'package:refazendo_projeto/components/task.dart';
import 'package:refazendo_projeto/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter', 'assets/images/flutter.jpg', 3),
          Task('Aprender Kotlin', 'assets/images/kotlin.jfif', 5),
          Task('Aprender Java', 'assets/images/java.jpg', 5),
          Task('Aprender PHP', 'assets/images/php.png', 5),
          Task('Aprender Ruby', 'assets/images/ruby.png', 5),
          Task('Aprender Swift', 'assets/images/swift.jpg', 5),
          SizedBox(
            height: 80,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const formScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
