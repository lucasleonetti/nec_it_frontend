import 'package:dio/dio.dart';
import '../../model/request_model/request_model.dart';

class RequestInformation {
  static Future<List<Solicitud>> getRequest() async {
    final dio = Dio();

    await Future.delayed(const Duration(seconds: 2));

    final response = await dio.get('http://10.0.2.2:3000/solicitudes');
    return (response.data['solicitudes'] as List)
        .map((e) => Solicitud.fromJson(e))
        .toList();
  }
}
