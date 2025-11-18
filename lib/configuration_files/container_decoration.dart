import 'package:flutter/material.dart';

BoxDecoration containerDecoration({
  Color color = const Color(0xFF0B0720),
  double borderRadius = 0.0,
  bool showShadow = true,
  BoxShape? shape,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: shape == null ? BorderRadius.circular(borderRadius) : null,
    boxShadow: showShadow
        ? [
      BoxShadow(
        color: Colors.grey,
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ]
        : null,
    shape: shape ?? BoxShape.rectangle,
  );
}