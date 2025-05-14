import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static Color textColor =
      AppColors.darkGray; // Assuming you still need AppColors

  // Base style to reuse common properties
  static TextStyle baseStyle({
    required String fontFamily,
    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
    );
  }
}
