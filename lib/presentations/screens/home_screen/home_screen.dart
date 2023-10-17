import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/widgets/images/logo_necit_black.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LogoNecItBlack(),
            TextButton(
                onPressed: () {
                  context.push('/responsable_dep_home_page');
                },
                child: const Text("Responsable De Departamento")),
            TextButton(
              onPressed: () {
                context.push('/colaborator_dashboard_screen');
              },
              child: const Text("Colaborador"),
            ),
          ],
        ),
      ),
    );
  }
}
