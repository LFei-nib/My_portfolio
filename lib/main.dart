import 'package:flutter/material.dart';
import 'sections/hero_section.dart';
import 'sections/projects_section.dart'; // Import your new section
import 'sections/skills_section.dart';
import 'sections/contact_section.dart';
import 'widgets/navbar.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pai Zay Oo Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueAccent,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  // 1. Define GlobalKeys for each section
  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  // 2. The function that handles the smooth scroll
  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // The Scrollable Background Content
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                // 3. Attach keys to the sections
                HeroSection(
                  key: _heroKey,
                  onWorkPressed: () => _scrollToSection(_projectsKey),
                ),

                ProjectsSection(
                  key: _projectsKey,
                ),

                SkillsSection(
                  key: _skillsKey,
                ),

                ContactSection(
                  key: _contactKey,
                ),

              ],
            ),
          ),

          // 4. The Sticky Navbar (placed at the top of the Stack)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Navbar(
              onHomeTap: () => _scrollToSection(_heroKey),
              onProjectsTap: () => _scrollToSection(_projectsKey),
              onSkillsTap: () => _scrollToSection(_skillsKey),
              onContactTap: () => _scrollToSection(_contactKey),
            ),
          ),
        ],
      ),
    );
  }
}
