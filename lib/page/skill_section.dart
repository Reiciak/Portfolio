// D:/Portfolio/lib/page/skill_section.dart (Original)

import 'package:flutter/material.dart';
import '../widgets/skill_tile.dart'; // Import the individual tile
import 'package:portfolio/configuration_files/skills_list.dart';

class SectionsTile extends StatelessWidget {
  const SectionsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Skill> skills = Skill.values;

    return GridView.extent(
      maxCrossAxisExtent: 200.0,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      childAspectRatio: 1.0,
      physics: const NeverScrollableScrollPhysics(), // Prevents scrolling inside SingleChildScrollView
      children: [
        // Iterates through the loaded skills and creates a tile for each
        for (final skill in skills)
          SkillTile(skill: skill),
      ],
    );
  }
}