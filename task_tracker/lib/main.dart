import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/test_page.dart';

void main() {
  runApp(const TaskTrackerApp());
}

class TaskTrackerApp extends StatelessWidget {
  const TaskTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MaterialApp(
        title: 'Task Tracker',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/test': (context) => const TestPage(),
        },
      ),
    );
  }
}
