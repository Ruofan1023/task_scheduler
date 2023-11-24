import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:task_scheduler/models/task.dart';

class DataFetcher {
  Future<List<Task>> fetchTasks() async {
    try {
      final jsonString = await rootBundle.loadString('assets/data.json');
      final jsonMap = json.decode(jsonString);

      final List<dynamic> tasksJson = jsonMap['tasks'];
      final List<Task> tasks = tasksJson.map((taskJson) {
        return Task.fromJson(taskJson as Map<String, dynamic>);
      }).toList();

      return tasks;
    } catch (e) {
      print('Error reading JSON file: $e');
      return [];
    }
  }
}
