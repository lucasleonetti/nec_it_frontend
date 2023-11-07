import 'package:dio/dio.dart';
import 'package:nec_it_frontend/model/colaborator_model/colaborator_model.dart';

class ColaboratorsInformation {
  static Future<List<Colaborator>> getColaborators() async {
    final dio = Dio();

    await Future.delayed(const Duration(seconds: 1));

    final response = await dio.get('http://192.168.0.124:3000/colaborators');
    return (response.data['colaborators'] as List)
        .map((e) => Colaborator.fromJson(e))
        .toList();
  }
}
