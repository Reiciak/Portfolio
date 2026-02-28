import 'package:flutter/material.dart';
import 'package:portfolio/widgets/skill_tile.dart';
import 'package:portfolio/configuration_files/skills_list.dart';


class SectionsTile extends StatelessWidget {
  const SectionsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Skill> skills = Skill.values;

    return SkillTile(
      skills: skills,
    );
  }
}