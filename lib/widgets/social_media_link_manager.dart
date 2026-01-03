import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

class SocialMediaLinkManager extends StatelessWidget {
  final String imagePath;
  final String url;
  final double size;
  final double borderRadius;

  const SocialMediaLinkManager({
    super.key,
    required this.imagePath,
    required this.url,
    this.size = 32.0,
    this.borderRadius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchURL(url),
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        'assets/images/$imagePath.png',
        width: size,
        height: size,
      ),
    );
  }
}