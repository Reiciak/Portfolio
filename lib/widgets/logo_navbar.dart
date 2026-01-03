import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import '../widgets/social_media_link_manager.dart';
import 'package:portfolio/widgets/social_media_icon_manager.dart';

class LogoNavbar extends StatelessWidget {
  const LogoNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: containerDecoration(color: Colors.white, borderRadius: 30.0),
      child: SocialMediaIconManager(
        direction: Axis.vertical,
        spacing: 16.0,
        useWhiteIcons: false, // Navbar is light -> use black icons
      ),
    );
  }
}