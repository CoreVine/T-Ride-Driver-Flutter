import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_font_families.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';

class AppTextStyles {
  static const Color textColor =
      AppColors.text; // Assuming you still need AppColors

  // Base style to reuse common properties
  static TextStyle baseStyle(
      {required String fontFamily,
      required FontWeight fontWeight,
      required double fontSize,
      FontStyle? fontStyle}) {
    return TextStyle(
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
    );
  }

  // Example Styles using the new data
  static final TextStyle agbalumoTitle = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyAgbalumo,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize32,
  );

  static final TextStyle agbalumo12Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyAgbalumo,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize12,
  );

  static final TextStyle tajawal14Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyTajawal,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize14,
  );

  static final TextStyle poppinsBlack = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBlack,
    fontSize: AppTextSizes.fontsize26,
  );

  static final TextStyle poppinsBlackItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBlack,
    fontSize: AppTextSizes.fontsize22,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontsize20,
  );

  static final TextStyle poppinsBoldItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontsize18,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsExtraBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightExtraBold,
    fontSize: AppTextSizes.fontsize16,
  );

  static final TextStyle poppinsExtraBoldItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightExtraBold,
    fontSize: AppTextSizes.fontsize14,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsExtraLight = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightExtraLight,
    fontSize: AppTextSizes.fontsize12,
  );

  static final TextStyle poppinsExtraLightItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightExtraLight,
    fontSize: AppTextSizes.fontsize10,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize16,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsLight = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightLight,
    fontSize: AppTextSizes.fontsize14,
  );

  static final TextStyle poppinsLightItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightLight,
    fontSize: AppTextSizes.fontsize12,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsMedium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize16,
  );

  static final TextStyle poppinsMediumItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize14,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsRegular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize18,
  );
  static final TextStyle poppins18Medium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize18,
  );
  static final TextStyle poppins16Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize16,
  );
  static final TextStyle poppins12Medium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize12,
  );
  static final TextStyle poppins12Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize12,
  );
  static final TextStyle poppins10Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize10,
  );
  static final TextStyle poppins14Medium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize14,
  );
  static final TextStyle poppins14Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize14,
  );

  static final TextStyle poppinsSemiBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontsize20,
  );

  static final TextStyle poppinsSemiBoldItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontsize18,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle poppinsThin = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightThin,
    fontSize: AppTextSizes.fontsize10,
  );
  static final TextStyle poppinsLightMedium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightLightMedium,
    fontSize: AppTextSizes.fontsize12,
  );
  static final TextStyle poppinsThinItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyPoppins,
    fontWeight: AppFontWeights.fontWeightThin,
    fontSize: AppTextSizes.fontsize12,
    fontStyle: FontStyle.italic,
  );
}
