import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import 'package:nec_it_frontend/model/request_model/request_model.dart';
import 'package:nec_it_frontend/api/get_requests/received_request_provider.dart';
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
        _RequestListView(),
      ],
    );
  }
}

class _RequestListView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final solicitudesAsyncValue = ref.watch(solicitudesProvider);

    return solicitudesAsyncValue.when(
      data: (solicitudes) {
        if (solicitudes.isEmpty) {
          return Text('No hay solicitudes disponibles');
        } else {
          return SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: solicitudes.length,
              itemBuilder: (context, index) {
                final solicitud = solicitudes[index];
                return _RequestCard(solicitud: solicitud);
              },
            ),
          );
        }
      },
      loading: () => CircularProgressIndicator(),
      error: (err, stack) => Text('Ha ocurrido un error: $err'),
    );
  }
}

class _RequestCard extends StatelessWidget {
  final Solicitud solicitud;

  const _RequestCard({Key? key, required this.solicitud}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                solicitud.descripcion,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    solicitud.estado,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    solicitud.origen,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
