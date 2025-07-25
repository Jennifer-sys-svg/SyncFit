import 'package:flutter/material.dart';
import 'workout_detail_screen.dart';
import 'progress_screen.dart'; // make sure this file exists

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workouts = [
      {'title': 'Leg Day', 'duration': '45 mins', 'type': 'Strength'},
      {'title': 'Cardio Blast', 'duration': '30 mins', 'type': 'HIIT'},
      {'title': 'Upper Body Burn', 'duration': '40 mins', 'type': 'Strength'},
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Workout Plan',
          style: TextStyle(color: Colors.amber),
        ),
        iconTheme: const IconThemeData(color: Colors.amber),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward, color: Colors.amber),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProgressScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (ctx, i) {
          final w = workouts[i];
          return ListTile(
            title: Text(
              w['title']!,
              style: const TextStyle(color: Colors.amber),
            ),
            subtitle: Text(
              '${w['duration']} • ${w['type']}',
              style: const TextStyle(color: Colors.amberAccent),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.amber),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => WorkoutDetailScreen(
                    title: w['title']!,
                    description: 'A ${w['type']} workout',
                    videoPath: '',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
