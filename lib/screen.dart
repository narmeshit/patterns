import 'package:flutter/material.dart';
import 'package:patterns/task_notifier.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final taskNotifier = Provider.of<TaskNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: taskNotifier.tasks.length,
              itemBuilder: (context, index) {
                final task = taskNotifier.tasks[index];
                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration: task.isDone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: Checkbox(
                    value: task.isDone,
                    onChanged: (value) {
                      taskNotifier.toggleTaskStatus(index);
                    },
                  ),
                  onLongPress: () {
                    taskNotifier.removeTask(index);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Nueva Tarea',
                    ),
                    onSubmitted: (value) {
                      taskNotifier.addTask(value);
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    int tasks = taskNotifier.tasks.length;
                    taskNotifier.addTask('Tarea $tasks');
                    tasks++;
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
