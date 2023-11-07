import 'package:dio/dio.dart';
import 'package:nec_it_frontend/model/sended_request_model/sended_request_model.dart';

class SendedRequestInformation {
  static Future<List<SendedRequest>> getSendedRequest() async {
    final dio = Dio();

    await Future.delayed(const Duration(seconds: 1));

    final response =
        await dio.get('http://192.168.0.124:3000/solicitudes_enviadas');
    return (response.data['solicitudes_enviadas'] as List)
        .map((e) => SendedRequest.fromJson(e))
        .toList();
  }
}
