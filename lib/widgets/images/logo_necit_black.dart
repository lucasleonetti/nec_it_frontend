import 'package:flutter/material.dart';

class LogoNecItBlack extends StatelessWidget {
  const LogoNecItBlack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        child: Image(
          alignment: Alignment.center,
          image: AssetImage('assets/logo/Nec_it_Logo-removebg-preview.png'),
        ),
      ),
    );
  }
}
