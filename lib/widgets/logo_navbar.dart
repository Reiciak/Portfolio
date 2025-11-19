import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';

class LogoNavbar extends StatelessWidget {
  const LogoNavbar({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  Widget _buildSocialIcon(String imagePath, String url) {
    return InkWell(
      onTap: () => _launchURL(url),
      borderRadius: BorderRadius.circular(20),
      child:
      Image.asset('assets/images/$imagePath.png',
        width: 32,
        height: 32,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: containerDecoration(color: Colors.white, borderRadius: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSocialIcon(
            'linkedinIcon',
            'https://www.linkedin.com/in/karolinabolek1/',
          ),
          const SizedBox(height: 16),
          _buildSocialIcon(
            'githubIcon',
            'https://github.com/Reiciak',
          ),
          const SizedBox(height: 16),
          _buildSocialIcon(
            'gmailIcon',
            'mailto:karolina16478@gmail.com',
          ),
        ],
      ),
    );
  }
}