import 'package:flutter/material.dart';
import 'package:nec_it_frontend/config/router/app_router.dart';
import 'package:nec_it_frontend/config/theme/app_theme.dart';

void main() {
  runApp(const NecIT());
}

class NecIT extends StatelessWidget {
  const NecIT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'NecIT',
      theme: AppTheme().getTheme(),
    );
  }
}
