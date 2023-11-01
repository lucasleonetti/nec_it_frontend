import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/widgets/logo/logo_necit_black.dart';
import '../../../config/theme/app_theme.dart';

class ResponsableDepHomePage extends StatelessWidget {
  const ResponsableDepHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sistemas'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: const _ResponsableDepHomePage(),
      bottomNavigationBar: const _BottomNavigatorBar(),
    );
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(
        spacing: 60,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        runSpacing: 20,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              context.push('/received_request_screen');
            },
            icon: const Icon(Icons.call_received_outlined),
            label: const Text('Solicitudes Recibidas'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              context.push('/sent_request_screen');
            },
            icon: const Icon(Icons.send_rounded),
            label: const Text('Solicitudes Enviadas'),
          ),
          ElevatedButton.icon(
              onPressed: () {
                context.push('/visualize_task_screen');
              },
              icon: const Icon(Icons.view_agenda_rounded),
              label: const Text('Visualizar Tareas')),
          ElevatedButton.icon(
            onPressed: () {
              context.push('/new_request_screen');
            },
            icon: const Icon(Icons.new_label_rounded),
            label: const Text('Nueva Solicitud'),
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
        ],
      ),
    );
  }
}

class _ResponsableDepHomePage extends StatelessWidget {
  const _ResponsableDepHomePage();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FadeInLeft(child: const LogoNecItBlack()),
        const Text(
          'Responsable de departamento',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
