import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import '../../../widgets/images/logo_necit_black.dart';

class ReceivedRequestScreen extends StatelessWidget {
  const ReceivedRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes Recibidas'),
      ),
      body: _ReceivedRequestHomeScreen(),
      bottomNavigationBar: const _BottomNavigatorBar(),
    );
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(alignment: WrapAlignment.center, children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.assignment_ind_outlined),
          label: const Text('Asignar Tarea'),
        ),
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

class _ReceivedRequestHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FadeInLeft(child: const LogoNecItBlack()),
        const Text(
          'Departamento de Sistemas',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
