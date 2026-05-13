import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.black.withOpacity(0.2), // Subtle contrast from Projects
      child: Column(
        children: [
          const Text(
            "Technical Expertise",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: [
              _buildSkillCategory(
                context,
                "Frontend",
                ["Flutter", "Dart", "Responsive UI", "State Management"],
                Icons.phone_android,
              ),
              _buildSkillCategory(
                context,
                "Backend",
                ["Supabase", "PostgreSQL", "Auth", "Storage"],
                Icons.cloud_queue,
              ),
              _buildSkillCategory(
                context,
                "Workflow",
                ["Git / GitHub", "Postman", "Agile", "Figma-to-Code"],
                Icons.terminal,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCategory(BuildContext context, String title, List<String> skills, IconData icon) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40, color: Colors.blueAccent),
          const SizedBox(height: 15),
          Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          ...skills.map((skill) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                const Icon(Icons.check_circle_outline, size: 16, color: Colors.blueAccent),
                const SizedBox(width: 10),
                Text(skill, style: const TextStyle(fontSize: 16, color: Colors.grey)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}