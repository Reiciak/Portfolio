import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
          builder: (context, constraints) {
            final double width = constraints.maxWidth * 2;
            final double height = 400;

            return SizedBox(
              width: width,
              height: height,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF141133),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              )
            );
          }
    );
  }
}


/*Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'XD',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );


 */