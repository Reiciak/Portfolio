import 'package:flutter/material.dart';
import 'dart:math';

class ResponsiveLayout {
  final BoxConstraints constraints;
  final double screenWidth;
  final double maxFontSize;
  final double minFontSize;
  final double aspectRatio;

  ResponsiveLayout({
    required this.constraints,
    required this.screenWidth,
    this.maxFontSize = 20.0,
    this.minFontSize = 10.0,
    this.aspectRatio = 1.3,
  });

  double get height => constraints.maxHeight;
  double get width => constraints.maxWidth;

  // Used for tile/layout sizing — caps height proportional to width
  double get cappedHeight => min(height, width * aspectRatio);

  double get fontSize {
    return (screenWidth * 0.02).clamp(minFontSize, maxFontSize);
  }
}
