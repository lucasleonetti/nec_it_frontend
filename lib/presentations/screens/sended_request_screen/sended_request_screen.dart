import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import 'package:nec_it_frontend/model/sended_request_model/sended_request_model.dart';

import '../../../api/get_sended_request/sended_request_provider.dart';

class SendedRequestScreen extends StatelessWidget {
  const SendedRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solicitudes Enviadas'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            'Departamento de Sistemas',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: _RequestSendedListView(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _BottomNavigatorBar(),
    );
  }
}

class _RequestSendedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _RequestSendedCard(),
          ],
        ),
      ),
    );
  }
}

class _RequestSendedCard extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final solicitudesEnviadas = ref.watch(solicitudesEnviadasProvider);

    return solicitudesEnviadas.when(
      data: (solicitudes) {
        if (solicitudes.isEmpty) {
          return Text('No hay solicitudes Enviadas');
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
  final SendedRequest solicitud;

  const _RequestCard({Key? key, required this.solicitud}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Descripcion: ',
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: solicitud.descripcion,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Estado: ',
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: solicitud.estado,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Prioridad: ',
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: solicitud.prioridad,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Creacion: ',
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: solicitud.creacion,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: 'Destino: ',
                  style: DefaultTextStyle.of(context)
                      .style
                      .copyWith(fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: solicitud.destino,
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
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
            context.push('/validate_task_screen');
          },
          icon: const Icon(Icons.check_circle_outline_rounded),
          label: const Text('Validar Solicitud'),
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
