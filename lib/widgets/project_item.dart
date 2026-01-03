import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/projects_details.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';

class ProjectItem extends StatelessWidget {
  final Project project;

  const ProjectItem({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final responsiveLayout = ResponsiveLayout(constraints: constraints);
        final baseFontSize = responsiveLayout.fontSize;
        final imageWidth = constraints.maxWidth;
        final imageHeight = imageWidth * (6 / 16);

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: imageWidth,
                height: imageHeight,
                child: Image.asset(
                  project.imagePath,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                project.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: baseFontSize * 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                project.description,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: baseFontSize,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Tools: ${project.tools}',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: baseFontSize * 0.9,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const Divider(color: Colors.white24, height: 30),
            ],
          ),
        );
      },
    );
  }
}