import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    required final int id,
    required final String descripcion,
    required final String estado,
    required final String prioridad,
    required final String creacion,
    required final String destino,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
