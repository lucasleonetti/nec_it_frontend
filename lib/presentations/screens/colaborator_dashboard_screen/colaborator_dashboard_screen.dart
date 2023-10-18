// ignore_for_file: unused_element

import 'package:flutter/material.dart';

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
        body: const _ColaboratorDashboard());
  }
}

class _ColaboratorDashboard extends StatelessWidget {
  const _ColaboratorDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Completed'),
              Text('Not Completed'),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green.shade300,
                    child: const Center(
                      child: Text('Completed tasks go here'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: const Center(
                      child: Text('Not completed tasks go here'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
