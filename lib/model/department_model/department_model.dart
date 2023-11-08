import 'package:freezed_annotation/freezed_annotation.dart';
part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    required int id,
    required String name,
    required String description,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, Object?> json) =>
      _$DepartmentModelFromJson(json);
}
