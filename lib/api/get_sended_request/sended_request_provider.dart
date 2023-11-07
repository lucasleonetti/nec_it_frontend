import 'package:nec_it_frontend/api/get_sended_request/SendedRequestInformation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/sended_request_model/sended_request_model.dart';
part 'sended_request_provider.g.dart';

@riverpod
Future<List<SendedRequest>> solicitudesEnviadas(SolicitudesEnviadasRef ref) {
  final solicitudesEnviadas = SendedRequestInformation.getSendedRequest();
  return solicitudesEnviadas;
}
