import 'package:flutter/material.dart';
import 'package:nec_it_frontend/widgets/images/logo_necit_black.dart';

class ResponsableDepHomePage extends StatelessWidget {
  const ResponsableDepHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Departamento de IT'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // TODO: Open notifications
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LogoNecItBlack(),
          Text(
            'Responsable de departamento',
          ),
        ],
      ),
    );
  }
}
