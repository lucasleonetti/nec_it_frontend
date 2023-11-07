// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'colaborator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColaboratorImpl _$$ColaboratorImplFromJson(Map<String, dynamic> json) =>
    _$ColaboratorImpl(
      id: json['id'] as int,
      nombre: json['nombre'] as String,
      apellido: json['apellido'] as String,
      email: json['email'] as String,
      telefono: json['telefono'] as String,
      departamento: json['departamento'] as String,
    );

Map<String, dynamic> _$$ColaboratorImplToJson(_$ColaboratorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'apellido': instance.apellido,
      'email': instance.email,
      'telefono': instance.telefono,
      'departamento': instance.departamento,
    };
