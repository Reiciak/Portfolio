import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/about_section_texts.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';
import 'dart:math';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final responsiveLayout = ResponsiveLayout(
          constraints: constraints,
          screenWidth: screenWidth,
        );
        final double avatarRadius = min(constraints.maxWidth * 0.2, 80.0);

        return Container(
          width: responsiveLayout.width,
          height: responsiveLayout.height,
          decoration: containerDecoration(color: Color(0xFF0E0A22)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: CircleAvatar(
                      radius: avatarRadius,
                      backgroundImage: const AssetImage(
                        'assets/images/PhotoAboutMe.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          aboutTexts[0],
                          style: TextStyle(
                            fontSize: responsiveLayout.fontSize,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          aboutTexts[1],
                          style: TextStyle(
                            fontSize: responsiveLayout.fontSize,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
