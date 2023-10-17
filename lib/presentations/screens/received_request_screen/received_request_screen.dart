import 'package:flutter/material.dart';

class ReceivedRequestScreen extends StatelessWidget {
  const ReceivedRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Requests'),
      ),
      body: const Center(
        child: Text('This is the Received Requests screen.'),
      ),
    );
  }
}
