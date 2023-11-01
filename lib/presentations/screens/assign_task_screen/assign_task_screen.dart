import 'package:animate_do/animate_do.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import 'package:nec_it_frontend/widgets/logo/logo_necit_black.dart';

class AssignTaskScreen extends StatelessWidget {
  const AssignTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Asignar Tarea'),
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

class _AssignTaskBodyForm extends StatelessWidget {
  const _AssignTaskBodyForm();

  @override
  Widget build(BuildContext context) {
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
              items: const [
                DropdownMenuItem(
                  value: '1',
                  child: Text('Solicitud 1'),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Text('Solicitud 2'),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Text('Solicitud 3'),
                ),
              ],
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
                  icon: const Icon(Icons.accessibility_outlined),
                  iconColor: Color(AppTheme().getTheme().primaryColor.value)),
              items: const [
                DropdownMenuItem(
                  value: '1',
                  child: Text('Colaborador 1'),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Text('Colaborador 2'),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Text('Colaborador 3'),
                ),
              ],
              onChanged: (value) {
                // Actualiza el estado del formulario
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'La fecha es requerida';
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send_and_archive_rounded),
                label: const Text('Enviar')),
          ],
        ),
      ),
    );
  }
}
