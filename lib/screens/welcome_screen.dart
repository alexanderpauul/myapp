
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String? _selectedProvince;
  String? _selectedPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cimma',
              style: GoogleFonts.playfairDisplay(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Welcome to the community',
              style: GoogleFonts.roboto(
                fontSize: 24,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 48),
            const Text('Let\'s get you started'),
            const SizedBox(height: 24),
            DropdownButtonFormField<String>(
              initialValue: _selectedProvince,
              hint: const Text('Select your province'),
              onChanged: (value) => setState(() => _selectedProvince = value),
              items: const [
                DropdownMenuItem(value: 'AB', child: Text('Alberta')),
                DropdownMenuItem(value: 'BC', child: Text('British Columbia')),
                DropdownMenuItem(value: 'MB', child: Text('Manitoba')),
                // ... other provinces
              ],
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              initialValue: _selectedPath,
              hint: const Text('Select your path'),
              onChanged: (value) => setState(() => _selectedPath = value),
              items: const [
                DropdownMenuItem(value: 'student', child: Text('Student')),
                DropdownMenuItem(value: 'worker', child: Text('Worker')),
                DropdownMenuItem(value: 'visitor', child: Text('Visitor')),
                // ... other paths
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF19194D),
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Continue',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

