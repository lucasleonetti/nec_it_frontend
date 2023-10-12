import 'package:flutter/material.dart';

class SendedRequestScreen extends StatelessWidget {
  const SendedRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sended Request Screen'),
      ),
      body: const Center(
        child: Text('This is the Sended Request Screen'),
      ),
    );
  }
}
