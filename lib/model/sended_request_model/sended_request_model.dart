import 'package:freezed_annotation/freezed_annotation.dart';
part 'sended_request_model.freezed.dart';
part 'sended_request_model.g.dart';

@freezed
class SendedRequest with _$SendedRequest {
  factory SendedRequest({
    required final int id,
    required final String descripcion,
    required final String estado,
    required final String prioridad,
    required final String creacion,
    required final String destino,
  }) = _SendedRequest;

  factory SendedRequest.fromJson(Map<String, Object?> json) =>
      _$SendedRequestFromJson(json);
}
