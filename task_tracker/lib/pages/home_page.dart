import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/task_tile.dart';
import 'add_task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Task> tasks = [];

  void _addNewTask(String title) {
    setState(() {
      tasks.add(Task(title: title));
    });
  }

  void _toggleTask(int index) {
    setState(() {
      tasks[index].isDone = !tasks[index].isDone;
    });
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void _deleteAllTasks() {
    setState(() {
      tasks.clear();
    });
  }

  void _deleteCompletedTasks() {
    setState(() {
      tasks.removeWhere((task) => task.isDone);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task Tracker')),
      body: Column(
        children: [
          Expanded(
            child: tasks.isEmpty
                ? const Center(child: Text('No tasks yet! Add some.'))
                : ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return TaskTile(
                        task: tasks[index],
                        onToggle: () => _toggleTask(index),
                        onDelete: () => _deleteTask(index),
                      );
                    },
                  ),
          ),

          // Show delete buttons only when tasks exist
          if (tasks.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: _deleteCompletedTasks,
                    icon: const Icon(Icons.delete_sweep),
                    label: const Text("Delete Completed"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: _deleteAllTasks,
                    icon: const Icon(Icons.delete_forever),
                    label: const Text("Delete All"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddTaskPage()),
          );
          if (newTask != null) _addNewTask(newTask);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
