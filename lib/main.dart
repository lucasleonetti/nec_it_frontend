import 'package:flutter/material.dart';
import 'package:nec_it_frontend/config/app_theme.dart';
import 'package:nec_it_frontend/widgets/screens/responsable_dep_home_page.dart';

void main() {
  runApp(const NecIT());
}

class NecIT extends StatelessWidget {
  const NecIT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NecIT',
      theme: AppTheme().getTheme(),
      home: const ResponsableDepHomePage(),
    );
  }
}
