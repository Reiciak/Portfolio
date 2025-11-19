import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';


class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;

        return Center(
          child: Container(
            width: width * 0.3,
            height: height * 0.3,
            decoration: containerDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: 32.0),
          )
        );
      },
    );
  }
}