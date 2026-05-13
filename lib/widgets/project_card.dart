import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> techStack;
  final Widget? mediaWidget; // This is where your video or image will go

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.techStack,
    this.mediaWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        children: [
          // Left Side: Project Media
          Expanded(
            flex: 1,
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: mediaWidget ?? const Icon(Icons.app_registration, size: 100),
            ),
          ),
          // Right Side: Project Info
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Text(description, style: const TextStyle(fontSize: 18, color: Colors.grey)),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 10,
                    children: techStack.map((tech) => Chip(label: Text(tech))).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}