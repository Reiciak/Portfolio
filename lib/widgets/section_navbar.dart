import 'package:flutter/material.dart';
import 'package:portfolio/configuration_files/container_decoration.dart';
import 'package:portfolio/configuration_files/responsive_layout.dart';

class SectionNavbar extends StatelessWidget {
  final String imagePath;
  final String text;

  const SectionNavbar({super.key, required this.imagePath, required this.text});

  Widget _buildContent(double fontSize) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: SizedBox.expand(
              child: Image(
                image: AssetImage('assets/images/$imagePath.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Expanded(
          flex: 4,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final layout = ResponsiveLayout(constraints: constraints);
        return Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 250.0),
            decoration: containerDecoration(borderRadius: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              onLongPress: null,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                fixedSize: Size(layout.width, layout.tileHeight),
                backgroundColor: const Color(0xFFAED9FF),
                foregroundColor: Colors.white,
              ),
              child: _buildContent(layout.fontSize),
            ),
          ),
        );
      },
    );
  }
}
