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
                // TODO: Open notifications
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
    );
  }
}
