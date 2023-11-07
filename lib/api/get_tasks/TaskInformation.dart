import 'package:dio/dio.dart';
import '../../model/task_model/task_model.dart';

class TaskInformation {
  static Future<List<Task>> getTasks() async {
    final dio = Dio();
    Future.delayed(const Duration(seconds: 1));

    final response = await dio.get('http://192.168.0.124:3000/tasks');

    return (response.data['tasks'] as List)
        .map((e) => Task.fromJson(e))
        .toList();
  }
}
