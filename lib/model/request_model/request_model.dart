import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_model.freezed.dart';
part 'request_model.g.dart';

@freezed
class Solicitud with _$Solicitud {
  factory Solicitud({
    required int id,
    required String descripcion,
    required String estado,
    required String prioridad,
    required String origen,
  }) = _Solicitud;

  factory Solicitud.fromJson(Map<String, dynamic> json) =>
      _$SolicitudFromJson(json);
}
