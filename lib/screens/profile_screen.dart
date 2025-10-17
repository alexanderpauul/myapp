
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
              const SizedBox(height: 16),
              Text(
                'Jane Doe',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Nationality: USA',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              _buildTracker(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTracker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Tracker',
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        const TrackerStep(title: 'Application Submitted', date: 'Jan 1, 2024', isCompleted: true),
        const TrackerStep(title: 'Biometrics', date: 'Jan 15, 2024', isCompleted: true),
        const TrackerStep(title: 'Medical Exam', date: 'Feb 1, 2024', isCompleted: true),
        const TrackerStep(title: 'Background Check', isCompleted: false),
        const TrackerStep(title: 'Final Decision', isCompleted: false),
      ],
    );
  }
}

class TrackerStep extends StatelessWidget {
  const TrackerStep({super.key, required this.title, this.date, required this.isCompleted});

  final String title;
  final String? date;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
          color: isCompleted ? Colors.green : Colors.grey,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
            if (date != null)
              Text(
                date!,
                style: const TextStyle(color: Colors.grey),
              ),
          ],
        ),
      ],
    );
  }
}
