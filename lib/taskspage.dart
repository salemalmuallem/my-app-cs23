import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  List<String> _tasks = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  // تحميل المهام من SharedPreferences
  void _loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedTasks = prefs.getString("tasks");

    if (savedTasks != null) {
      setState(() {
        _tasks = List<String>.from(jsonDecode(savedTasks));
      });
    }
  }

  // حفظ المهام
  void _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("tasks", jsonEncode(_tasks));
  }

  // إضافة مهمة
  void _addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tasks.add(_controller.text);
        _controller.clear();
      });
      _saveTasks();
    }
  }

  // حذف مهمة
  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
    _saveTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("المهام اليومية")),

      body: Column(
        children: [
          // ادخال مهمة جديدة
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: "ادخل مهمة جديدة",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                ElevatedButton(onPressed: _addTask, child: const Text("إضافة")),
              ],
            ),
          ),

          // قائمة المهام
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_tasks[index]),

                    // زر الحذف
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteTask(index),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
