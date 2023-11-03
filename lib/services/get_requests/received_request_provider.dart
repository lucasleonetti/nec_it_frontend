import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:nec_it_frontend/model/request_model/request_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'received_request_provider.g.dart';

@riverpod
Future<List<Solicitud>> solicitudes(SolicitudesRef ref) async {
  final response = await Dio().get('http://localhost:8080/solicitudes');
  final json = jsonDecode(response.data) as Map<String, dynamic>;
  final solicitudes = json['solicitudes'] as List<dynamic>;
  return solicitudes.map((e) => Solicitud.fromJson(e)).toList();
}
