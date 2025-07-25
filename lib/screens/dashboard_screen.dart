import 'package:flutter/material.dart';
import 'workout_plan_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Black background
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'SyncFit Dashboard',
          style: TextStyle(color: Colors.amber),
        ),
        iconTheme: const IconThemeData(color: Colors.amber),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const WorkoutPlanScreen()),
                );
              },
              child: Card(
                color: Colors.grey[900],
                child: ListTile(
                  title: const Text(
                    "Today's Workout",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: const Text(
                    "View today's routine",
                    style: TextStyle(color: Colors.amber),
                  ),
                  trailing: const Icon(
                    Icons.fitness_center,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
