// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Solicitud _$SolicitudFromJson(Map<String, dynamic> json) {
  return _Solicitud.fromJson(json);
}

/// @nodoc
mixin _$Solicitud {
  int get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;
  String get prioridad => throw _privateConstructorUsedError;
  String get origen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolicitudCopyWith<Solicitud> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolicitudCopyWith<$Res> {
  factory $SolicitudCopyWith(Solicitud value, $Res Function(Solicitud) then) =
      _$SolicitudCopyWithImpl<$Res, Solicitud>;
  @useResult
  $Res call(
      {int id,
      String descripcion,
      String estado,
      String prioridad,
      String origen});
}

/// @nodoc
class _$SolicitudCopyWithImpl<$Res, $Val extends Solicitud>
    implements $SolicitudCopyWith<$Res> {
  _$SolicitudCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? estado = null,
    Object? prioridad = null,
    Object? origen = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      prioridad: null == prioridad
          ? _value.prioridad
          : prioridad // ignore: cast_nullable_to_non_nullable
              as String,
      origen: null == origen
          ? _value.origen
          : origen // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolicitudImplCopyWith<$Res>
    implements $SolicitudCopyWith<$Res> {
  factory _$$SolicitudImplCopyWith(
          _$SolicitudImpl value, $Res Function(_$SolicitudImpl) then) =
      __$$SolicitudImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String descripcion,
      String estado,
      String prioridad,
      String origen});
}

/// @nodoc
class __$$SolicitudImplCopyWithImpl<$Res>
    extends _$SolicitudCopyWithImpl<$Res, _$SolicitudImpl>
    implements _$$SolicitudImplCopyWith<$Res> {
  __$$SolicitudImplCopyWithImpl(
      _$SolicitudImpl _value, $Res Function(_$SolicitudImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? estado = null,
    Object? prioridad = null,
    Object? origen = null,
  }) {
    return _then(_$SolicitudImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      estado: null == estado
          ? _value.estado
          : estado // ignore: cast_nullable_to_non_nullable
              as String,
      prioridad: null == prioridad
          ? _value.prioridad
          : prioridad // ignore: cast_nullable_to_non_nullable
              as String,
      origen: null == origen
          ? _value.origen
          : origen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SolicitudImpl implements _Solicitud {
  _$SolicitudImpl(
      {required this.id,
      required this.descripcion,
      required this.estado,
      required this.prioridad,
      required this.origen});

  factory _$SolicitudImpl.fromJson(Map<String, dynamic> json) =>
      _$$SolicitudImplFromJson(json);

  @override
  final int id;
  @override
  final String descripcion;
  @override
  final String estado;
  @override
  final String prioridad;
  @override
  final String origen;

  @override
  String toString() {
    return 'Solicitud(id: $id, descripcion: $descripcion, estado: $estado, prioridad: $prioridad, origen: $origen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolicitudImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.prioridad, prioridad) ||
                other.prioridad == prioridad) &&
            (identical(other.origen, origen) || other.origen == origen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, descripcion, estado, prioridad, origen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SolicitudImplCopyWith<_$SolicitudImpl> get copyWith =>
      __$$SolicitudImplCopyWithImpl<_$SolicitudImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SolicitudImplToJson(
      this,
    );
  }
}

abstract class _Solicitud implements Solicitud {
  factory _Solicitud(
      {required final int id,
      required final String descripcion,
      required final String estado,
      required final String prioridad,
      required final String origen}) = _$SolicitudImpl;

  factory _Solicitud.fromJson(Map<String, dynamic> json) =
      _$SolicitudImpl.fromJson;

  @override
  int get id;
  @override
  String get descripcion;
  @override
  String get estado;
  @override
  String get prioridad;
  @override
  String get origen;
  @override
  @JsonKey(ignore: true)
  _$$SolicitudImplCopyWith<_$SolicitudImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
