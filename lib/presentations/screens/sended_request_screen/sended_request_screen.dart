import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';

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
          _RequestSendedListView(),
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
    return Placeholder();
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
