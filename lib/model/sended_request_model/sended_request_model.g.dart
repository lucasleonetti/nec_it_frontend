// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sended_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendedRequestImpl _$$SendedRequestImplFromJson(Map<String, dynamic> json) =>
    _$SendedRequestImpl(
      id: json['id'] as int,
      descripcion: json['descripcion'] as String,
      estado: json['estado'] as String,
      prioridad: json['prioridad'] as String,
      creacion: json['creacion'] as String,
      destino: json['destino'] as String,
    );

Map<String, dynamic> _$$SendedRequestImplToJson(_$SendedRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
      'prioridad': instance.prioridad,
      'creacion': instance.creacion,
      'destino': instance.destino,
    };
