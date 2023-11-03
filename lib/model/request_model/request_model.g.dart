// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SolicitudImpl _$$SolicitudImplFromJson(Map<String, dynamic> json) =>
    _$SolicitudImpl(
      id: json['id'] as int,
      descripcion: json['descripcion'] as String,
      estado: json['estado'] as String,
      prioridad: json['prioridad'] as String,
      origen: json['origen'] as String,
    );

Map<String, dynamic> _$$SolicitudImplToJson(_$SolicitudImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
      'prioridad': instance.prioridad,
      'origen': instance.origen,
    };
