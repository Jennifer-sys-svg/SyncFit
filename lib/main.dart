import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // or welcome_screen.dart

void main() {
  runApp(const SyncFitApp());
}

class SyncFitApp extends StatelessWidget {
  const SyncFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SyncFit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
      home: const HomeScreen(), // <- Make sure this is your welcome screen
    );
  }
}
