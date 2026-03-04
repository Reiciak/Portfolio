import 'package:flutter/material.dart';
import 'dart:math';

class ResponsiveLayout {
  final BoxConstraints constraints;
  final double heightMultiplier;
  final double widthMultiplier;
  final double maxFontSize;

  /// Controls how tall a tile is relative to its width.
  /// 1.0 = square, 1.3 = slightly portrait. Used by [tileHeight].
  final double tileAspectRatio;

  ResponsiveLayout({
    required this.constraints,
    this.widthMultiplier = 0.3,
    this.heightMultiplier = 0.3,
    this.maxFontSize = 15.0,
    this.tileAspectRatio = 1.3,
  });

  double get height => constraints.maxHeight;
  double get width => constraints.maxWidth;

  /// Height capped so the tile never exceeds [width] × [tileAspectRatio].
  /// Keeps tiles square-ish on mobile while allowing taller tiles on wide screens.
  double get tileHeight => min(height, width * tileAspectRatio);

  double get fontSize {
    final fontSize = tileHeight * heightMultiplier;
    return min(fontSize, maxFontSize);
  }
}
