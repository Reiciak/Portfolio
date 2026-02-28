import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';
import 'package:portfolio/configuration_files/skills_list.dart';

Widget _buildTile(Skill skill) {
  return LayoutBuilder(
    builder: (context, constraints) {
      final responsiveLayout = ResponsiveLayout(constraints: constraints);

      return AspectRatio(
        aspectRatio: 1.0,
        child: Container(
          decoration: containerDecoration(borderRadius: 8.0),
          child: ElevatedButton(
            onPressed: () {
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
              skill.displayName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: responsiveLayout.fontSize,
              ),
            ),
          ),
        ),
      );
    },
  );
}


class SkillTile extends StatelessWidget {
  final List<Skill> skills;

  const SkillTile({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    const int columns = 6;
    final int rows = (skills.length / columns).ceil();

    return Column(
      children: List.generate(rows, (rowIndex) {
        final int startIndex = rowIndex * columns;
        final int endIndex = (startIndex + columns).clamp(0, skills.length);
        final skillsInRow = skills.sublist(startIndex, endIndex);

        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: rowIndex < rows - 1 ? 8.0 : 0, left: 16.0, right: 16.0),
            child: Row(
              children: [
                for (int i = 0; i < skillsInRow.length; i++) ...[
                  Expanded(
                    child: _buildTile(skillsInRow[i]),
                  ),
                  if (i < skillsInRow.length - 1) const SizedBox(width: 16.0),
                ],
              ],
            ),
          ),
        );
      }),
    );
  }
}