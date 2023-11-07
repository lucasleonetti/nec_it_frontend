// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as int,
      descripcion: json['descripcion'] as String,
      estado: json['estado'] as String,
      prioridad: json['prioridad'] as String,
      creacion: json['creacion'] as String,
      destino: json['destino'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'descripcion': instance.descripcion,
      'estado': instance.estado,
      'prioridad': instance.prioridad,
      'creacion': instance.creacion,
      'destino': instance.destino,
    };
