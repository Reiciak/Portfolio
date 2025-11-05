import 'package:flutter/material.dart';
import 'dart:math';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double avatarRadius = min(constraints.maxWidth * 0.2, 80.0);
        final double avatarDiameter = avatarRadius * 2;
        final double bannerHeight = avatarRadius * 1.5;

        return Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: bannerHeight,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0B0720),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: bannerHeight - avatarRadius,
                  left: (constraints.maxWidth - avatarDiameter) / 2,
                  child: Container(
                    width: avatarDiameter,
                    height: avatarDiameter,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: avatarRadius,
                      backgroundImage: const AssetImage(
                          'assets/images/MainPhoto.png'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: avatarRadius + 16),
          ],
        );
      },
    );
  }
}