import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFFFFFFF);
  static const Color primary = Color(0xFF0077FF);
  static const Color text = Color(0xFF282828);
  static const Color transparent = Colors.transparent;
  static Color white = Color(0XFFFFFFFF);
  static Color green = Color(0XFF37CD58);
  static Color green30 = Color(0X4D37CD58); // ← تم التعديل هنا
  static Color orange = Color(0XFFFFA448);
  static Color orange30 = Color(0X4DFFA448);
  static Color pink = Color(0XFFD81159);
  static Color pink30 = Color(
    0X4DD81159,
  ); // ← تم التعديل هنا (كانت خطأ في الكود السابق)
  static Color purple = Color(0XFF6A0572);
  static Color purple30 = Color(0X4D6A0572);
  static Color red = Color(0XFFFF5050);
  static Color red30 = Color(0X4DFF5050); // ← يمكن إضافتها إذا احتجت
  static Color gray = Color(0XFFF6F6F6);
  static Color darkGray = Color(0XFF757575);
  static Color silver = Color(0XFF979797);
  static Color grayE4 = Color(0XFFE4E4E4);
  static Color black = Color(0XFF282828);
  static Color darkBlack = Color(0XFF414141);
  static Color blue = Color(0XFF48A0FF);
  static Color blue30 = Color(0X4D48A0FF); // ← يمكن إضافتها إذا احتجت

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
