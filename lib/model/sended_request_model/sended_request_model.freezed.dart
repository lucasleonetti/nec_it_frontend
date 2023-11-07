// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sended_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendedRequest _$SendedRequestFromJson(Map<String, dynamic> json) {
  return _SendedRequest.fromJson(json);
}

/// @nodoc
mixin _$SendedRequest {
  int get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  String get estado => throw _privateConstructorUsedError;
  String get prioridad => throw _privateConstructorUsedError;
  String get creacion => throw _privateConstructorUsedError;
  String get destino => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendedRequestCopyWith<SendedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendedRequestCopyWith<$Res> {
  factory $SendedRequestCopyWith(
          SendedRequest value, $Res Function(SendedRequest) then) =
      _$SendedRequestCopyWithImpl<$Res, SendedRequest>;
  @useResult
  $Res call(
      {int id,
      String descripcion,
      String estado,
      String prioridad,
      String creacion,
      String destino});
}

/// @nodoc
class _$SendedRequestCopyWithImpl<$Res, $Val extends SendedRequest>
    implements $SendedRequestCopyWith<$Res> {
  _$SendedRequestCopyWithImpl(this._value, this._then);

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
    Object? creacion = null,
    Object? destino = null,
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
      creacion: null == creacion
          ? _value.creacion
          : creacion // ignore: cast_nullable_to_non_nullable
              as String,
      destino: null == destino
          ? _value.destino
          : destino // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendedRequestImplCopyWith<$Res>
    implements $SendedRequestCopyWith<$Res> {
  factory _$$SendedRequestImplCopyWith(
          _$SendedRequestImpl value, $Res Function(_$SendedRequestImpl) then) =
      __$$SendedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String descripcion,
      String estado,
      String prioridad,
      String creacion,
      String destino});
}

/// @nodoc
class __$$SendedRequestImplCopyWithImpl<$Res>
    extends _$SendedRequestCopyWithImpl<$Res, _$SendedRequestImpl>
    implements _$$SendedRequestImplCopyWith<$Res> {
  __$$SendedRequestImplCopyWithImpl(
      _$SendedRequestImpl _value, $Res Function(_$SendedRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? estado = null,
    Object? prioridad = null,
    Object? creacion = null,
    Object? destino = null,
  }) {
    return _then(_$SendedRequestImpl(
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
      creacion: null == creacion
          ? _value.creacion
          : creacion // ignore: cast_nullable_to_non_nullable
              as String,
      destino: null == destino
          ? _value.destino
          : destino // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendedRequestImpl implements _SendedRequest {
  _$SendedRequestImpl(
      {required this.id,
      required this.descripcion,
      required this.estado,
      required this.prioridad,
      required this.creacion,
      required this.destino});

  factory _$SendedRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendedRequestImplFromJson(json);

  @override
  final int id;
  @override
  final String descripcion;
  @override
  final String estado;
  @override
  final String prioridad;
  @override
  final String creacion;
  @override
  final String destino;

  @override
  String toString() {
    return 'SendedRequest(id: $id, descripcion: $descripcion, estado: $estado, prioridad: $prioridad, creacion: $creacion, destino: $destino)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendedRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.estado, estado) || other.estado == estado) &&
            (identical(other.prioridad, prioridad) ||
                other.prioridad == prioridad) &&
            (identical(other.creacion, creacion) ||
                other.creacion == creacion) &&
            (identical(other.destino, destino) || other.destino == destino));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, descripcion, estado, prioridad, creacion, destino);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendedRequestImplCopyWith<_$SendedRequestImpl> get copyWith =>
      __$$SendedRequestImplCopyWithImpl<_$SendedRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendedRequestImplToJson(
      this,
    );
  }
}

abstract class _SendedRequest implements SendedRequest {
  factory _SendedRequest(
      {required final int id,
      required final String descripcion,
      required final String estado,
      required final String prioridad,
      required final String creacion,
      required final String destino}) = _$SendedRequestImpl;

  factory _SendedRequest.fromJson(Map<String, dynamic> json) =
      _$SendedRequestImpl.fromJson;

  @override
  int get id;
  @override
  String get descripcion;
  @override
  String get estado;
  @override
  String get prioridad;
  @override
  String get creacion;
  @override
  String get destino;
  @override
  @JsonKey(ignore: true)
  _$$SendedRequestImplCopyWith<_$SendedRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
