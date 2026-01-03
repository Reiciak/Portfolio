import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';
import 'package:portfolio/widgets/social_media_icon_manager.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final responsiveLayout = ResponsiveLayout(constraints: constraints);
        final year = DateTime.now().year;

        return Container(
          width: responsiveLayout.width,
          height: responsiveLayout.height,
          decoration: containerDecoration(color: Color(0xFF0E0A22)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialMediaIconManager(
                      direction: Axis.horizontal,
                        spacing: 8.0,
                        useWhiteIcons: true,
                        ),

                      Text(
                        '© $year - KAROLINA BOLEK '
                        'MADE WITH DART/FLUTTER',
                        style: TextStyle(
                        fontSize: responsiveLayout.fontSize/1.4,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFFFFFFF),
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
