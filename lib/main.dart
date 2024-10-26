import 'package:flutter/material.dart';
import 'package:tugas1/features/event_pulse/home_page.dart';

void main() {
  runApp(const EventPulseApp());
}

class EventPulseApp extends StatelessWidget {
  const EventPulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventPulse',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
