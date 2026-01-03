import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/social_media_links.dart';
import 'package:portfolio/widgets/social_media_link_manager.dart';

class SocialMediaIconManager extends StatelessWidget {
  final Axis direction;
  final double spacing;
  final bool useWhiteIcons;
  final MainAxisSize mainAxisSize;

  const SocialMediaIconManager({
    super.key,
    required this.direction,
    required this.spacing,
    required this.useWhiteIcons,
    this.mainAxisSize = MainAxisSize.min,
  });

  List<Widget> _buildSocialMediaLinks() {
    final List<Widget> linkWidgets = [];

    for (int i = 0; i < links.length; i++) {
      final link = links[i];

      String currentImagePath = link.socialMediaImagePath;

      if (link.socialMediaName.toLowerCase() == 'github') {
        currentImagePath =
        useWhiteIcons ? 'githubIcon_white' : 'githubIcon_black';
      }

      linkWidgets.add(
        SocialMediaLinkManager(
          imagePath: currentImagePath,
          url: link.socialMediaLink,
        ),
      );

      if (i < links.length - 1) {
        if (direction == Axis.horizontal) {
          linkWidgets.add(SizedBox(width: spacing));
        } else {
          linkWidgets.add(SizedBox(height: spacing));
        }
      }
    }
    return linkWidgets;
  }

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.horizontal) {
      return Row(
        mainAxisSize: mainAxisSize,
        children: _buildSocialMediaLinks(),
      );
    } else {
      return Column(
        mainAxisSize: mainAxisSize,
        children: _buildSocialMediaLinks(),
      );
    }
  }
}