import 'package:flutter/material.dart';
import 'dart:math';

Column _buildButtonContent(String imagePath, String text, double fontSize) {
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
      SizedBox(height: 4),
      Expanded(
          flex: 4,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
            ),
          )
      ),
    ],
  );
}


class SectionNavbar extends StatelessWidget {
  final String imagePath;
  final String text;

  const SectionNavbar({
    super.key,
    required this.imagePath,
    required this.text,});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const maxFontSize = 15.0;
        final dynamicFontSize = constraints.maxHeight * 0.3;
        final responsiveFontSize = min(dynamicFontSize, maxFontSize);
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;
        final containerDecoration = BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        );

        return Container(
            decoration: containerDecoration,
            child: ElevatedButton(
          onPressed: (){},
          onLongPress: null,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            fixedSize: Size(
              width,
              height,
            ),
            backgroundColor: const Color(0xFFAED9FF),
            foregroundColor: Colors.white,
          ),
            child: _buildButtonContent(imagePath, text, responsiveFontSize),
            ),
        );
      },
    );
  }
}
