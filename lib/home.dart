import 'package:flutter/material.dart';
import 'package:todo_assign/tasks.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(138, 157, 255, 0.72),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Manage your\n Daily TO DO',
              textAlign: TextAlign.center, // Center the text
              style: TextStyle(fontSize: 40), // Set text size
            ),
            Image.asset(
              'assets/checklist.png',
              height: 400,
              width: 400,
            ),
            const SizedBox(width: 10),
            const Text(
              'Without much worry just manage\n things as easy as piece of cake',
              textAlign: TextAlign.center, // Center the text
              style: TextStyle(fontSize: 24), // Set text size
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: Text('Create a Note', style: TextStyle(fontSize: 22)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(255, 192, 14, 1),
                fixedSize: const Size(232, 38),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TasksView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
