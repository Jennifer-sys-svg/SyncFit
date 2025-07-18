import 'package:flutter/material.dart';

class ProgressImagesWidget extends StatelessWidget {
  const ProgressImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Progress'),
        backgroundColor: Colors.purple, // Optional styling
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Before & After',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // BEFORE IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/before.jpg', fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            const Text('Before', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 30),

            // AFTER IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/after.jpg', fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            const Text('After', style: TextStyle(fontSize: 18)),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
