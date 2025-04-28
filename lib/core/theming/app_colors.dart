import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFFFFFFF);
  static const Color darkBlue = Color(0xFF004799);
  static const Color delete = Color(0xFFFD5053);
  static const Color icons = Color(0xFF282828);
  static const Color implemented = Color(0xFF00D270);
  static const Color notImplemented = Color(0xFFFF9011);
  static const Color primary = Color(0xFF0077FF);
  static const Color primary10 = Color(0x1A0077FF);
  static const Color text = Color(0xFF282828);
  static const Color text40 = Color(0x66282828);
  static const Color text60 = Color(0x99282828);
  static const Color textfiled = Color(0xFFF2F2F2);
  static const Color waterDrop = Color(0xFFD6E7EE);
  static const Color white15 = Color(0x26FFFFFF);
  static const Color white25 = Color(0x40FFFFFF);
  static const Color transparent = Colors.transparent;

  // Optional: Add a method to create a MaterialColor from a single Color
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
