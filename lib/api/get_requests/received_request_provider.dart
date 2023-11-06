import 'package:nec_it_frontend/api/get_requests/RequestInformation.dart';
import 'package:nec_it_frontend/model/request_model/request_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'received_request_provider.g.dart';

@riverpod
Future<List<Solicitud>> solicitudes(SolicitudesRef ref) async {
  final solicitudes = await RequestInformation.getRequest();
  return solicitudes;
}
