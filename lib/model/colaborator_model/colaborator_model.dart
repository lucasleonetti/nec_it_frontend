import 'package:freezed_annotation/freezed_annotation.dart';
part 'colaborator_model.freezed.dart';
part 'colaborator_model.g.dart';

@freezed
class Colaborator with _$Colaborator {
  factory Colaborator({
    required final int id,
    required final String nombre,
    required final String apellido,
    required final String email,
    required final String telefono,
    required final String departamento,
  }) = _Colaborator;

  factory Colaborator.fromJson(Map<String, Object?> json) =>
      _$ColaboratorFromJson(json);
}
