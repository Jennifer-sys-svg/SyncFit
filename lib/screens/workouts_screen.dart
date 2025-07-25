import 'package:flutter/material.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout Categories')),
      body: ListView(
        children: const [
          ListTile(title: Text('Full Body Workout')),
          ListTile(title: Text('Lower Body Blast')),
          ListTile(title: Text('Cardio & Core')),
        ],
      ),
    );
  }
}
