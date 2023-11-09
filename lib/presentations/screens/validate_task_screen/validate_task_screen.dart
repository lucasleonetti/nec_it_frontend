import 'package:animate_do/animate_do.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nec_it_frontend/api/get_sended_request/sended_request_provider.dart';
import 'package:nec_it_frontend/widgets/logo/logo_necit_black.dart';

import '../../../config/theme/app_theme.dart';

class ValidateTaskScreen extends StatelessWidget {
  const ValidateTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validar Solicitud'),
        centerTitle: true,
      ),
      body: _ValidateTaskScreen(),
      bottomNavigationBar: _BottomNavigatorBar(),
    );
  }
}

class _ValidateTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            FadeInDown(child: const LogoNecItBlack()),
            const SizedBox(height: 10),
            _ValidateTaskBodyForm(),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _ValidateTaskBodyForm extends ConsumerWidget {
  _ValidateTaskBodyForm();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedValue = null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final solicitudesEnviadas = ref.watch(solicitudesEnviadasProvider);

    return Form(
      key: _formKey,
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
                  icon: const Icon(Icons.pending_actions),
                  iconColor: Color(AppTheme().getTheme().primaryColor.value)),
              items: solicitudesEnviadas.when(
                data: (solicitudes) => solicitudes.map((solicitud) {
                  return DropdownMenuItem(
                    value: solicitud.id.toString(),
                    child: Flexible(
                      child: Text(
                        '${solicitud.descripcion}: ${solicitud.destino}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: true,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                    ),
                  );
                }).toList(),
                loading: () => [],
                error: (_, __) => [],
              ),
              onChanged: (value) {
                selectedValue = value;
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                if (selectedValue != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Solicitud validada'),
                      backgroundColor: Colors.green,
                    ),
                  );
                  _formKey.currentState?.reset();
                  selectedValue = null;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Seleccione una solicitud'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              icon: const Icon(Icons.check_box),
              label: const Text('Validar'),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(alignment: WrapAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            width: double.infinity,
            child: Text("NEC IT",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppTheme().getTheme().primaryColor)),
          ),
        )
      ]),
    );
  }
}
