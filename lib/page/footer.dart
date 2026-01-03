import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';
import '../widgets/social_media_link_manager.dart';
import 'package:portfolio/configuration_files/social_media_links.dart';

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
          decoration: containerDecoration(
            color: Color(0xFF0E0A22),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SocialMediaLinkManager(
                          imagePath: 'linkedinIcon',
                          url: 'https://www.linkedin.com/in/karolinabolek1/',
                        ),
                        const SizedBox(width: 8),
                        SocialMediaLinkManager(
                          imagePath: 'githubIcon_white',
                          url: 'https://github.com/Reiciak',
                        ),
                        const SizedBox(width: 8),
                        SocialMediaLinkManager(
                          imagePath: 'gmailIcon',
                          url: 'mailto:karolina16478@gmail.com',
                        ),
                      ],
                    ),

                    Text(
                      '© $year - KAROLINA BOLEK '
                          'MADE WITH DART/FLUTTER',
                      style: TextStyle(
                        fontSize: responsiveLayout.fontSize,
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