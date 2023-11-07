import 'package:dio/dio.dart';
import '../../model/request_model/request_model.dart';

class RequestInformation {
  static Future<List<Solicitud>> getRequest() async {
    final dio = Dio();

    await Future.delayed(const Duration(seconds: 1));

    final response =
        await dio.get('http://192.168.0.124:3000/solicitudes_recibidas');
    return (response.data['solicitudes_recibidas'] as List)
        .map((e) => Solicitud.fromJson(e))
        .toList();
  }
}
