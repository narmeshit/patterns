import 'package:flutter/material.dart';

import 'model.dart';

class TaskNotifier extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }
}
