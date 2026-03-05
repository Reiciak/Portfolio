import 'package:flutter/material.dart';
import 'package:portfolio/widgets/section_navbar.dart';
import 'package:portfolio/configuration_files/sections_list.dart';

class SectionsMenu extends StatelessWidget {
  const SectionsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Column(
      children: [
        SizedBox(height: isMobile ? 12.0 : 24.0),
        SizedBox(
          height: (screenWidth * 0.4).clamp(150.0, 220.0),
          child: _MenuRow(isMobile: isMobile),
        ),
        SizedBox(height: isMobile ? 24.0 : 48.0),
      ],
    );
  }
}

class _MenuRow extends StatelessWidget {
  final bool isMobile;

  const _MenuRow({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(flex: isMobile ? 1 : 3),
        ...sections.expand(
          (section) => [
            if (section != sections.first)
              SizedBox(width: isMobile ? 8.0 : 16.0),
            Expanded(
              flex: 3,
              child: SectionNavbar(
                imagePath: section.imagePath,
                text: section.text,
              ),
            ),
          ],
        ),
        Spacer(flex: isMobile ? 1 : 3),
      ],
    );
  }
}
