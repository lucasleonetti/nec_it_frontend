import 'package:flutter/material.dart';
import 'package:nec_it_frontend/widgets/screens/assign_task_screen.dart';

class AssignTaskButton extends StatelessWidget {
  const AssignTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AssignTaskScreen()),
        );
      },
      child: const Text('Assign Task'),
    );
  }
}
