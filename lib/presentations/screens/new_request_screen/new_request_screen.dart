// ignore_for_file: unused_field

import 'package:animate_do/animate_do.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';
import '../../../widgets/logo/logo_necit_black.dart';

class NewRequestScreen extends StatelessWidget {
  const NewRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Solicitud'),
        centerTitle: true,
      ),
      body: const _NewRequestHomeScreen(),
      bottomNavigationBar: const _BottomNavigatorBar(),
    );
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class _NewRequestHomeScreen extends StatelessWidget {
  const _NewRequestHomeScreen();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInLeft(child: const LogoNecItBlack()),
          const Text(
            'Registrar nueva solicitud',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const _NewRequestBodyForm()
        ],
      ),
    );
  }
}

class _NewRequestBodyForm extends StatefulWidget {
  const _NewRequestBodyForm();

  @override
  _NewRequestBodyFormState createState() => _NewRequestBodyFormState();
}

class _NewRequestBodyFormState extends State<_NewRequestBodyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _destino;
  String? _prioridad;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            SingleChildScrollView(
              child: DropdownButtonFormField2<String>(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Destino',
                    hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    icon: const Icon(Icons.home_rounded),
                    iconColor: Color(AppTheme().getTheme().primaryColor.value)),
                isDense: true,
                isExpanded: true,
                value: null,
                items: const [
                  DropdownMenuItem(value: 'item1', child: Text('Cocina')),
                  DropdownMenuItem(value: 'item2', child: Text('Sistemas')),
                  DropdownMenuItem(
                      value: 'item3', child: Text('Atencion a alumnos')),
                  DropdownMenuItem(value: 'item4', child: Text('Limpieza')),
                  DropdownMenuItem(value: 'item5', child: Text('Gerencia')),
                  DropdownMenuItem(value: 'item6', child: Text('Cantina')),
                  DropdownMenuItem(value: 'item7', child: Text('Gerencia')),
                  DropdownMenuItem(
                      value: 'item8', child: Text('Mantenimiento')),
                  DropdownMenuItem(
                      value: 'item9', child: Text('Fotocopiadora')),
                  DropdownMenuItem(value: 'item10', child: Text('Biblioteca')),
                ],
                onChanged: (value) {
                  setState(() {
                    _destino = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField2<String>(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Prioridad',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  icon: const Icon(Icons.local_fire_department_outlined),
                  iconColor: Color(AppTheme().getTheme().primaryColor.value)),
              isDense: true,
              isExpanded: true,
              value: null,
              items: const [
                DropdownMenuItem(value: 'item1', child: Text('Baja')),
                DropdownMenuItem(value: 'item2', child: Text('Media')),
                DropdownMenuItem(value: 'item3', child: Text('Alta')),
              ],
              onChanged: (value) {
                setState(() {
                  _prioridad = value;
                });
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Descripcion...',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  icon: const Icon(Icons.description_outlined),
                  iconColor: Color(AppTheme().getTheme().primaryColor.value),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, introduce una descripción';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _formKey.currentState!.reset();
                        _destino = null;
                        _prioridad = null;
                      });
                    },
                    icon: const Icon(Icons.cancel_outlined),
                    label: const Text('Cancelar')),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate() &&
                        _destino != null &&
                        _prioridad != null) {
                      setState(() {
                        _formKey.currentState!.reset();
                        _destino = null;
                        _prioridad = null;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Solicitud enviada'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                              'Por favor, selecciona un destino y una prioridad'),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.send_outlined),
                  label: const Text('Enviar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
