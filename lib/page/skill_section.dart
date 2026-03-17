import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skill_tile.dart';
import 'package:portfolio/configuration_files/skills_list.dart';

class SectionsTile extends StatelessWidget {
  const SectionsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: skillCategories.map((category) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0E0A22),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SkillTile(skills: category.skills),
            ],
          ),
        );
      }).toList(),
    );
  }
}
