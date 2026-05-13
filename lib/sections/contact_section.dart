import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this to pubspec.yaml

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  // Helper to launch URLs (LinkedIn, GitHub, etc.)
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.black,
      child: Column(
        children: [
          const Text(
            "Get In Touch",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "I'm currently open to new mobile development opportunities.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),

          // Social Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(
                icon: Icons.phone,
                label: "Phone",
                onTap: () => _launchURL("tel:+66 2482385"),
              ),
              const SizedBox(width: 20,),
              _socialIcon(
                icon: Icons.email,
                label: "Email",
                onTap: () => _launchURL("mailto:paizayoo2120tt@gmail.com"),
              ),
              const SizedBox(width: 20,),
              _socialIcon(
                icon: Icons.device_hub,
                label: "Github",
                onTap: () => _launchURL("https://github.com/LFei-nib"),
              ),
            ],
          ),

          const SizedBox(height: 60),
          const Divider(color: Colors.white10),
          const SizedBox(height: 20),
          const Text(
            "© 2026 Pai Zay Oo. Built with Flutter & Supabase.",
            style: TextStyle(color: Colors.white30, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _socialIcon({required IconData icon, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white.withOpacity(0.05),
            child: Icon(icon, color: Colors.blueAccent),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}