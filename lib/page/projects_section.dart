import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/widgets/project_item.dart';
import 'package:portfolio/configuration_files/projects_details.dart';


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration(),
      padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      for (final project in projects)
                        ProjectItem(project: project),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}