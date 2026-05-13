import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onWorkPressed;

  const HeroSection({super.key, required this.onWorkPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, // Takes full screen height
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "PAI ZAY OO",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Mobile Developer | Flutter",
            style: TextStyle(fontSize: 24, color: Colors.grey),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: onWorkPressed,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text("View My Projects"),
            ),
          ),
        ],
      ),
    );
  }
}