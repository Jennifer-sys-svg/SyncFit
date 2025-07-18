import 'package:flutter/material.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  final List<Map<String, String>> workouts = const [
    {'title': 'Leg Day', 'duration': '45 mins', 'type': 'Strength'},
    {'title': 'Cardio Blast', 'duration': '30 mins', 'type': 'HIIT'},
    {'title': 'Upper Body Burn', 'duration': '40 mins', 'type': 'Strength'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout Plans')),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final workout = workouts[index];
          return ListTile(
            leading: const Icon(Icons.fitness_center),
            title: Text(workout['title']!),
            subtitle: Text('${workout['duration']} • ${workout['type']}'),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
