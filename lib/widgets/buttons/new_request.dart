import 'package:flutter/material.dart';
import 'package:nec_it_frontend/presentations/screens/new_request_screen/new_request_screen.dart';

class NewRequestButton extends StatelessWidget {
  const NewRequestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NewRequestScreen()),
        );
      },
      child: const Text('New Request'),
    );
  }
}
