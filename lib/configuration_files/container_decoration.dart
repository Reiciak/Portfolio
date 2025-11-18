import 'package:flutter/material.dart';

BoxDecoration containerDecoration({
  Color color = const Color(0xFF0B0720),
  double borderRadius = 8.0,
  bool showShadow = true,
}){
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(borderRadius),
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
  );
}