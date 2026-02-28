// D:/Portfolio/lib/widgets/skill_tile.dart (Original)

import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';
import 'package:portfolio/configuration_files/skills_list.dart';

class SkillTile extends StatelessWidget {
  final Skill skill;

  const SkillTile({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final responsiveLayout = ResponsiveLayout(constraints: constraints);
        return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          decoration: containerDecoration(borderRadius: 8.0),
          child: ElevatedButton(
            onPressed: () {
              // Handle action when pressed
            },
            onLongPress: null,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              backgroundColor: const Color(0xFFAED9FF),
              foregroundColor: Colors.white,
            ),
            child: Text(
              skill.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: responsiveLayout.fontSize,
              ),
            ),
          ),
        );
      },
    );
  }
}