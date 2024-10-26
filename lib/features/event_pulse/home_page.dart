import 'package:flutter/material.dart';
import '../../data/event_data.dart';
import 'event_page.dart';
import '../../core/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("EventPulse"),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventPage(event: event),
                ),
              );
            },
            child: Card(
              color: AppColors.accent,
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:
                    Image.asset(event.imageUrl, width: 50, fit: BoxFit.cover),
                title: Text(event.title,
                    style: const TextStyle(color: AppColors.text)),
                subtitle: Text("${event.date} • ${event.location}",
                    style: TextStyle(color: Colors.grey[300])),
              ),
            ),
          );
        },
      ),
    );
  }
}
