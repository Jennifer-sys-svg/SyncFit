import 'package:flutter/material.dart';
import 'workout_detail_screen.dart';
import 'my_progress_screen.dart'; // Import your progress screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("SyncFit"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome back, Jennifer 💪",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              '"Discipline is choosing what you want most over what you want now."',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkoutDetailScreen(
                      title: 'Leg Day Blast 💪🏽',
                      description:
                          'A powerful glutes and hamstrings workout to build strength and shape.',
                      videoPath: 'assets/videos/leg_day.mp4',
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 12,
                ),
              ),
              child: const Text("Start Workout"),
            ),

            const SizedBox(height: 15),

            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkoutDetailScreen(
                      title: 'Leg Day Blast 💪🏽',
                      description:
                          'A powerful glutes and hamstrings workout to build strength and shape.',
                      videoPath: 'assets/videos/leg_day.mp4',
                    ),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.indigo),
              ),
              child: const Text("Watch Demo"),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProgressScreen(),
                  ),
                );
              },
              child: const Text('My Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
