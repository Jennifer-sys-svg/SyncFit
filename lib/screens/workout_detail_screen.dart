import 'package:flutter/material.dart';

class WorkoutDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String videoPath;

  const WorkoutDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.videoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(description, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
