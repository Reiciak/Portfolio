import 'package:flutter/material.dart';
import 'package:portfolio/widgets/section_navbar.dart';


class SectionsMenu extends StatelessWidget {
  const SectionsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(flex: 2),
          Expanded(
            flex: 3,
            child: SectionNavbar(
              imagePath: 'About',
              text: 'Taki tam ludek',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: SectionNavbar(
              imagePath: 'Skills',
              text: 'Unity, C#, Dart, Flutter, Figma',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: SectionNavbar(
              imagePath: 'Projects',
              text: 'Calculator, ChatGPT Game,BowlingVR'
            ),
          ),
          const Spacer(flex: 2),
        ],
    );
  }
}