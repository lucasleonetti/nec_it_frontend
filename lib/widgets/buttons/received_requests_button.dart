import 'package:flutter/material.dart';
import 'package:nec_it_frontend/presentations/screens/received_request_screen/received_request_screen.dart';

class ReceivedRequestsButton extends StatelessWidget {
  const ReceivedRequestsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const ReceivedRequestScreen()),
        );
      },
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.notifications),
          SizedBox(width: 8),
          Text('Received Requests'),
        ],
      ),
    );
  }
}
