import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class Solicitud with _$Solicitud {
  factory Solicitud({
    required final int id,
    required final String descripcion,
    required final String estado,
    required final String prioridad,
    required final String origen,
  }) = _Solicitud;

  factory Solicitud.fromJson(Map<String, Object?> json) =>
      _$SolicitudFromJson(json);
}
