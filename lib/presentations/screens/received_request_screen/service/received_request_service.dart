import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nec_it_frontend/model/request_model/request_model.dart';

class SolicitudesProvider extends ChangeNotifier {
  List<Solicitud> solicitudes = [];

  Future<void> cargarSolicitudes() async {
    final Dio dio = Dio();
    final response = await dio.get('http://localhost:8080/load_solicitudes');

    if (response.statusCode == 200) {
      final solicitudesJson = response.data;

      solicitudes = solicitudesJson.map((solicitudJson) {
        return Solicitud.fromJson(solicitudJson);
      }).toList();

      notifyListeners();
    }
  }
}
