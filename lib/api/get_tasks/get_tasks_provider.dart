import 'package:nec_it_frontend/api/get_tasks/TaskInformation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/task_model/task_model.dart';
part 'get_tasks_provider.g.dart';

@riverpod
Future<List<Task>> getTasks(GetTasksRef ref) {
  final tasks = TaskInformation.getTasks();
  return tasks;
}
