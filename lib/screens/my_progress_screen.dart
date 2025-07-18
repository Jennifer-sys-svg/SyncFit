import 'package:flutter/material.dart';

class MyProgressScreen extends StatelessWidget {
  const MyProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Progress')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'My Transformation Journey',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            /// Image comparison row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // BEFORE Image
                Column(
                  children: [
                    const Text("Before"),
                    SizedBox(
                      height: 150, // Smaller size
                      width: 100,
                      child: Image.asset(
                        'assets/images/before.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

                // AFTER Image
                Column(
                  children: [
                    const Text("After"),
                    SizedBox(
                      height: 150, // Smaller size
                      width: 100,
                      child: Image.asset(
                        'assets/images/after.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Motivational text or quote
            const Text(
              '"Small steps every day lead to big results!"',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
