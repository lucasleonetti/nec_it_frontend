import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nec_it_frontend/widgets/logo/logo_necit_black.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _LoginScreen(),
    );
  }
}

class _LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeInDown(child: const LogoNecItBlack()),
            const Text(
              "Iniciar Sesión",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Usuario",
                    contentPadding: EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.error_outline_rounded),
                ),
                const SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.login),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
