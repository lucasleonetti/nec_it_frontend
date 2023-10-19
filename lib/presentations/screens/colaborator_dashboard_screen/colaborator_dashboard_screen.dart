// ignore_for_file: unused_element

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../../config/theme/app_theme.dart';

class ColaboratorDashboardScreen extends StatelessWidget {
  const ColaboratorDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Colaborador'),
          actions: [
            IconButton(
                onPressed: () {
                  ScaffoldState().openDrawer();
                },
                icon: const Icon(Icons.notifications))
          ],
        ),
        body: const _ColaboratorDashboard(),
        bottomNavigationBar: const _BottomNavigatorBar());
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(
        spacing: 30,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.assistant_rounded),
              label: const Text("Solicitar Asistencia")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: double.infinity,
              child: Text("NEC IT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppTheme().getTheme().primaryColor)),
            ),
          )
        ],
      ),
    );
  }
}

class _ColaboratorDashboard extends StatelessWidget {
  const _ColaboratorDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInLeft(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Not Completed',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  Text('Completed',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red.shade200,
                        child: const Center(
                          child: Text('Not completed tasks go here'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green.shade200,
                        child: const Center(
                          child: Text('Completed tasks go here'),
                        ),
                      ),
                    ),
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
