
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              'Everyone in One Place',
              style: GoogleFonts.roboto(
                fontSize: 24,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 48),
            TextButton(
              onPressed: () => context.go('/welcome'),
              child: Text(
                'Log In',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: const Color(0xFF19194D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const SocialLoginButton(asset: 'assets/images/facebook.png', text: 'Continue with Facebook'),
            const SizedBox(height: 16),
            const SocialLoginButton(asset: 'assets/images/google.png', text: 'Continue with Google'),
            const SizedBox(height: 16),
            const SocialLoginButton(asset: 'assets/images/microsoft.png', text: 'Continue with Microsoft'),
          ],
        ),
      ),
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final String asset;
  final String text;

  const SocialLoginButton({super.key, required this.asset, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () => context.go('/welcome'),
      icon: Image.asset(asset, height: 24),
      label: Text(text, style: GoogleFonts.roboto(color: Colors.black87)),
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
