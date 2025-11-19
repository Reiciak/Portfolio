import 'package:flutter/material.dart';
import 'dart:math';

class ResponsiveLayout {
  final BoxConstraints constraints;
  final double heightMultiplier;
  final double widthMultiplier;
  final double maxFontSize;

  ResponsiveLayout({
    required this.constraints,
    this.widthMultiplier = 0.3,
    this.heightMultiplier = 0.3,
    this.maxFontSize = 15.0,
  });

  double get height => constraints.maxHeight;
  double get width => constraints.maxWidth;

  double get fontSize {
    final fontSize = height * heightMultiplier;
    return min(fontSize, maxFontSize);
  }
}