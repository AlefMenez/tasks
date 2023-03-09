import 'package:flutter/material.dart';
import 'package:refazendo_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  const TaskInherited({Key? key, required Widget child}) : super(key: key, child: child);

  final List<Task> taskList = const [
    Task('Aprender Flutter', 'assets/images/flutter.jpg', 3),
    Task('Aprender Kotlin', 'assets/images/kotlin.jfif', 5),
    Task('Aprender Java', 'assets/images/java.jpg', 5),
    Task('Aprender PHP', 'assets/images/php.png', 5),
    Task('Aprender Ruby', 'assets/images/ruby.png', 5),
    Task('Aprender Swift', 'assets/images/swift.jpg', 5),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(
      result != null,
    );
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
