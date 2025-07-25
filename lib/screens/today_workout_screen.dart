import 'package:flutter/material.dart';

class TodayWorkoutScreen extends StatelessWidget {
  const TodayWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's Workout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Full Body Workout",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text("🔹 10 Squats"),
            Text("🔹 15 Push-ups"),
            Text("🔹 20 Jumping Jacks"),
            Text("🔹 10 Lunges (each leg)"),
            Text("🔹 30-sec Plank"),
          ],
        ),
      ),
    );
  }
}
