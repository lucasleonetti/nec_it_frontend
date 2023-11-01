import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import 'package:nec_it_frontend/presentations/screens/received_request_screen/service/received_request_service.dart';
import '../../../widgets/logo/logo_necit_black.dart';

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
          onPressed: () {
            context.push('/assign_task_screen');
          },
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
        const SizedBox(height: 10),
        _RequestList()
      ],
    );
  }
}

class _RequestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<void>(
          future: SolicitudesProvider().cargarSolicitudes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(
                  child: Text('Error al cargar las solicitudes'));
            } else {
              return _RequestListView();
            }
          }),
    );
  }
}

class _RequestListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: SolicitudesProvider().solicitudes.map((solicitud) {
        return GestureDetector(
          child: Card(
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID: ${solicitud.id}"),
                Text("Descripción: ${solicitud.descripcion}"),
                Text("Estado: ${solicitud.estado}"),
                Text("Prioridad: ${solicitud.prioridad}"),
                Text("Origen: ${solicitud.origen}"),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
