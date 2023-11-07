// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colaborator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Colaborator _$ColaboratorFromJson(Map<String, dynamic> json) {
  return _Colaborator.fromJson(json);
}

/// @nodoc
mixin _$Colaborator {
  int get id => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get apellido => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get telefono => throw _privateConstructorUsedError;
  String get departamento => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColaboratorCopyWith<Colaborator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColaboratorCopyWith<$Res> {
  factory $ColaboratorCopyWith(
          Colaborator value, $Res Function(Colaborator) then) =
      _$ColaboratorCopyWithImpl<$Res, Colaborator>;
  @useResult
  $Res call(
      {int id,
      String nombre,
      String apellido,
      String email,
      String telefono,
      String departamento});
}

/// @nodoc
class _$ColaboratorCopyWithImpl<$Res, $Val extends Colaborator>
    implements $ColaboratorCopyWith<$Res> {
  _$ColaboratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? apellido = null,
    Object? email = null,
    Object? telefono = null,
    Object? departamento = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellido: null == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      telefono: null == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String,
      departamento: null == departamento
          ? _value.departamento
          : departamento // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColaboratorImplCopyWith<$Res>
    implements $ColaboratorCopyWith<$Res> {
  factory _$$ColaboratorImplCopyWith(
          _$ColaboratorImpl value, $Res Function(_$ColaboratorImpl) then) =
      __$$ColaboratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nombre,
      String apellido,
      String email,
      String telefono,
      String departamento});
}

/// @nodoc
class __$$ColaboratorImplCopyWithImpl<$Res>
    extends _$ColaboratorCopyWithImpl<$Res, _$ColaboratorImpl>
    implements _$$ColaboratorImplCopyWith<$Res> {
  __$$ColaboratorImplCopyWithImpl(
      _$ColaboratorImpl _value, $Res Function(_$ColaboratorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombre = null,
    Object? apellido = null,
    Object? email = null,
    Object? telefono = null,
    Object? departamento = null,
  }) {
    return _then(_$ColaboratorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      apellido: null == apellido
          ? _value.apellido
          : apellido // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      telefono: null == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String,
      departamento: null == departamento
          ? _value.departamento
          : departamento // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColaboratorImpl implements _Colaborator {
  _$ColaboratorImpl(
      {required this.id,
      required this.nombre,
      required this.apellido,
      required this.email,
      required this.telefono,
      required this.departamento});

  factory _$ColaboratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColaboratorImplFromJson(json);

  @override
  final int id;
  @override
  final String nombre;
  @override
  final String apellido;
  @override
  final String email;
  @override
  final String telefono;
  @override
  final String departamento;

  @override
  String toString() {
    return 'Colaborator(id: $id, nombre: $nombre, apellido: $apellido, email: $email, telefono: $telefono, departamento: $departamento)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColaboratorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellido, apellido) ||
                other.apellido == apellido) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono) &&
            (identical(other.departamento, departamento) ||
                other.departamento == departamento));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, nombre, apellido, email, telefono, departamento);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColaboratorImplCopyWith<_$ColaboratorImpl> get copyWith =>
      __$$ColaboratorImplCopyWithImpl<_$ColaboratorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColaboratorImplToJson(
      this,
    );
  }
}

abstract class _Colaborator implements Colaborator {
  factory _Colaborator(
      {required final int id,
      required final String nombre,
      required final String apellido,
      required final String email,
      required final String telefono,
      required final String departamento}) = _$ColaboratorImpl;

  factory _Colaborator.fromJson(Map<String, dynamic> json) =
      _$ColaboratorImpl.fromJson;

  @override
  int get id;
  @override
  String get nombre;
  @override
  String get apellido;
  @override
  String get email;
  @override
  String get telefono;
  @override
  String get departamento;
  @override
  @JsonKey(ignore: true)
  _$$ColaboratorImplCopyWith<_$ColaboratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
