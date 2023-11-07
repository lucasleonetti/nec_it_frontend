import 'package:nec_it_frontend/api/get_colaborators/ColaboratorsInformation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../model/colaborator_model/colaborator_model.dart';
part 'get_colaborators_provider.g.dart';

@riverpod
Future<List<Colaborator>> colaborators(ColaboratorsRef ref) {
  final colaborators = ColaboratorsInformation.getColaborators();
  return colaborators;
}
