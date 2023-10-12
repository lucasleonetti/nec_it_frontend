import 'package:flutter/material.dart';
import 'package:nec_it_frontend/widgets/images/logo_necit_black.dart';

class ResponsableDepHomePage extends StatelessWidget {
  const ResponsableDepHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Departamento de IT',
            style: TextStyle(fontSize: 20),
            textWidthBasis: TextWidthBasis.longestLine),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // TODO: Open drawer
          },
        ),
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
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
