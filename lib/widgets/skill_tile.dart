import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/path_manager.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';
import 'package:portfolio/configuration_files/skills_list.dart';

Widget _buildTile(Skill skill, double fontSize) {
  return Container(
    decoration: containerDecoration(borderRadius: 8.0),
    child: ElevatedButton(
      onPressed: () {},
      onLongPress: null,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        backgroundColor: const Color(0xFFAED9FF),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (skill.iconPath != null) ...[
            SizedBox(
              width: fontSize * 1.5,
              height: fontSize * 1.5,
              child: Image.asset(
                PathManager.icon(skill.iconPath!),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 8.0),
          ],
          Flexible(
            child: Text(
              skill.displayName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                color: const Color.fromARGB(255, 31, 33, 34),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class SkillTile extends StatelessWidget {
  final List<Skill> skills;

  const SkillTile({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    const double spacing = 16.0;

    final responsiveLayout = ResponsiveLayout(
      constraints: const BoxConstraints(),
      screenWidth: screenWidth,
      fontSizeMultiplier: 0.04,
    );
    final double fontSize = responsiveLayout.fontSize;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        spacing: spacing,
        runSpacing: spacing,
        children: skills.map((skill) => _buildTile(skill, fontSize)).toList(),
      ),
    );
  }
}
