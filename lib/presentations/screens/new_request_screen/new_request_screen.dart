import 'package:flutter/material.dart';

class NewRequestScreen extends StatefulWidget {
  const NewRequestScreen({Key? key}) : super(key: key);
  @override
  NewRequestScreenState createState() => NewRequestScreenState();
}

class NewRequestScreenState extends State<NewRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Request'),
      ),
      body: Container(
          // Add your form widgets here
          ),
    );
  }
}
