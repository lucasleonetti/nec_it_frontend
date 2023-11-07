import 'package:animate_do/animate_do.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import 'package:nec_it_frontend/widgets/logo/logo_necit_black.dart';
import '../../../api/get_colaborators/get_colaborators_provider.dart';
import '../../../api/get_requests/received_request_provider.dart';

class AssignTaskScreen extends StatelessWidget {
  const AssignTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Asignar Tarea'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInLeft(child: const LogoNecItBlack()),
              const _AssignTaskBodyForm(),
            ],
          ),
        ),
        bottomNavigationBar: const _BottomNavigatorBar());
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: Text("NEC IT",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppTheme().getTheme().primaryColor)),
      ),
    );
  }
}

class _AssignTaskBodyForm extends ConsumerWidget {
  const _AssignTaskBodyForm();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final solicitudesAsyncValue = ref.watch(solicitudesProvider);
    final colaboratorsAsyncValue = ref.watch(colaboratorsProvider);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 30),
            DropdownButtonFormField2<String>(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Solicitud',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  icon: const Icon(Icons.assignment_ind_outlined),
                  iconColor: Color(AppTheme().getTheme().primaryColor.value)),
              items: solicitudesAsyncValue.when(
                data: (solicitudes) => solicitudes.map((solicitud) {
                  return DropdownMenuItem(
                    value: solicitud.id.toString(),
                    child: Flexible(
                      child: Text(
                        '${solicitud.descripcion}: ${solicitud.origen}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  );
                }).toList(),
                loading: () => [],
                error: (_, __) => [],
              ),
              onChanged: (value) {
                // Actualiza el estado del formulario
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField2<String>(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Colaborador',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  icon: const Icon(Icons.assignment_ind_outlined),
                  iconColor: Color(AppTheme().getTheme().primaryColor.value)),
              items: colaboratorsAsyncValue.when(
                data: (colaborator) => colaborator.map((colaborator) {
                  return DropdownMenuItem(
                    value: colaborator.id.toString(),
                    child: Flexible(
                      child: Text(
                        '${colaborator.nombre} ${colaborator.apellido}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12),
                      ),
                    ),
                  );
                }).toList(),
                loading: () => [],
                error: (_, __) => [],
              ),
              onChanged: (value) {
                // Actualiza el estado del formulario
              },
            ),
            const SizedBox(height: 20),
            DateTimeField(
              format: DateFormat(
                  "dd-MM-yyyy"), // puedes cambiar el formato como prefieras
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                hintText: 'Fecha',
                hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                icon: const Icon(Icons.calendar_today_outlined),
                iconColor: Color(AppTheme().getTheme().primaryColor.value),
              ),
              onShowPicker: (context, currentValue) async {
                final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
                return date;
              },
              validator: (value) {
                if (value == null) {
                  return 'La fecha es requerida';
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send_and_archive_rounded),
              label: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
