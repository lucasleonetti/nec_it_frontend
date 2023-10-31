import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';
import 'package:nec_it_frontend/widgets/images/logo_necit_black.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          FloatingActionButton.small(
            onPressed: () {
              context.push('/auth_screen');
            },
            elevation: 30,
            child: const Icon(Icons.login_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FadeInDown(child: const LogoNecItBlack()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton.icon(
                  onPressed: () {
                    context.push('/responsable_dep_home_page');
                  },
                  icon: const Icon(Icons.home_work_outlined),
                  label: const Text("Responsable De Departamento")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton.icon(
                onPressed: () {
                  context.push('/colaborator_dashboard_screen');
                },
                icon: const Icon(Icons.accessibility_outlined),
                label: const Text("Colaborador"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text("NEC IT",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppTheme().getTheme().primaryColor)),
      ),
    );
  }
}
