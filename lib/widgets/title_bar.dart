import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';

class TitleBar extends StatelessWidget {
  final String text;

  const TitleBar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final responsiveLayout = ResponsiveLayout(constraints: constraints);

        return Center(
            child: Container(
              width: responsiveLayout.width * 0.3,
              height: responsiveLayout.height * 0.3,
              decoration: containerDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: 32.0),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: responsiveLayout.fontSize,
                    color: Color(0xFF0B0720),
                  ),
                ),
              ),
            )
        );
      },
    );
  }
}