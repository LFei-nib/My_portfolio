import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          // Section Heading
          const Text(
            "My Projects",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 4,
            width: 80,
            color: Colors.blueAccent,
          ),
          const SizedBox(height: 60),

          // Project 1: AI Talk (Featured)
          ProjectCard(
            title: "AI Talk",
            description:
            "A social communication platform developed during my time at IT-Technocom. "
                "It features secure authentication, real-time user feeds, and a sleek chat interface. "
                "The backend is powered by Supabase for seamless data handling.",
            techStack: const ["Flutter", "Supabase", "Dart", "Clean Architecture"],
            mediaWidget: _buildImageScroll([
              'assets/images/946shots_so.png', // Login
              'assets/images/929shots_so.png', // Chats
              'assets/images/821shots_so.png', // Feed
            ]),
          ),

          // Project 2: MuanTok (Video Commerce)
          ProjectCard(
            title: "MuanTok",
            description:
            "A mobile application similar to TikTok Shop. "
                "I focused on building a high-performance UI/UX, profile pages, and map services. "
                "The app allows users to browse short-form videos and shop directly within the feed.",
            techStack: const ["Flutter", "Supabase", "Maps API", "UI/UX Design"],
            mediaWidget: Center(
              child: Image.asset('assets/images/60shots_so.png')
            ),
          ),

          // Project 3: Livenix
          ProjectCard(
            title: "Livenix",
            description:
            "Developed as part of my co-operative education at Rangsit University. "
                "Livenix focuses on dynamic content delivery and optimized mobile performance.",
            techStack: const ["Flutter", "API Integration", "Mobile Development"],
            mediaWidget: Center(
              child: Image.asset('assets/images/325shots_so.png')
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create a horizontal scroll for project images
  Widget _buildImageScroll(List<String> images) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(20),
      itemCount: images.length,
      separatorBuilder: (context, index) => const SizedBox(width: 15),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            images[index],
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}