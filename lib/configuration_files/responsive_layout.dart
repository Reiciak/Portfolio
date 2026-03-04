import 'package:flutter/material.dart';
import 'dart:math';

class ResponsiveLayout {
  final BoxConstraints constraints;
  final double heightMultiplier;
  final double widthMultiplier;
  final double maxFontSize;

  final double aspectRatio;

  ResponsiveLayout({
    required this.constraints,
    this.widthMultiplier = 0.3,
    this.heightMultiplier = 0.3,
    this.maxFontSize = 15.0,
    this.aspectRatio = 1.3,
  });

  double get height => constraints.maxHeight;
  double get width => constraints.maxWidth;

  double get cappedHeight => min(height, width * aspectRatio);

  double get fontSize {
    final fontSize = cappedHeight * heightMultiplier;
    return min(fontSize, maxFontSize);
  }
}
