import 'package:flutter/material.dart';

import '../../../config/theme/app_theme.dart';

class ValidateTaskScreen extends StatelessWidget {
  const ValidateTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Validar Tarea'),
          centerTitle: true,
        ),
        body: _ValidateTaskScreen(),
        bottomNavigationBar: _BottomNavigatorBar());
  }
}

class _ValidateTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Placeholder(),
        ],
      ),
    );
  }
}

class _BottomNavigatorBar extends StatelessWidget {
  const _BottomNavigatorBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Wrap(alignment: WrapAlignment.center, children: [
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
