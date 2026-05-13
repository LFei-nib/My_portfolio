import 'dart:ui';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onSkillsTap;
  final VoidCallback onContactTap;

  const Navbar({
    super.key,
    required this.onHomeTap,
    required this.onProjectsTap,
    required this.onSkillsTap,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // The glass effect
        child: Container(
          height: 70,
          width: double.infinity,
          color: Colors.black.withOpacity(0.5), // Semi-transparent
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "PZO", // Your initials as a logo
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  TextButton(onPressed: onHomeTap, child: const Text("Home")),
                  const SizedBox(width: 20),
                  TextButton(onPressed: onProjectsTap, child: const Text("Projects")),
                  const SizedBox(width: 20),
                  TextButton(onPressed: onSkillsTap, child: const Text("Skills")),
                  ElevatedButton(
                    onPressed: onContactTap,
                    child: const Text("Contact"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}