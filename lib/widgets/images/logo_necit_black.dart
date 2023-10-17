import 'package:flutter/material.dart';

class LogoNecItBlack extends StatelessWidget {
  const LogoNecItBlack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      alignment: Alignment.center,
      image: AssetImage('assets/logo/necit_logo_black-removebg-preview.png'),
      height: 200,
      width: 200,
    );
  }
}
