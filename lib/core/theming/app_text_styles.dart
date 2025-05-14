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
  static final TextStyle robotoTitle = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize32,
  );

  static final TextStyle agbalumo12Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize12,
  );

  static final TextStyle tajawal14Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyTajawal,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize14,
  );

  static final TextStyle robotoBlack = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBlack,
    fontSize: AppTextSizes.fontsize26,
  );

  static final TextStyle robotoBlackItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBlack,
    fontSize: AppTextSizes.fontsize22,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontsize20,
  );

  static final TextStyle robotoBoldItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontsize18,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoExtraBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightExtraBold,
    fontSize: AppTextSizes.fontsize16,
  );

  static final TextStyle robotoExtraBoldItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightExtraBold,
    fontSize: AppTextSizes.fontsize14,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoExtraLight = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightExtraLight,
    fontSize: AppTextSizes.fontsize12,
  );

  static final TextStyle robotoExtraLightItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightExtraLight,
    fontSize: AppTextSizes.fontsize10,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize16,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoLight = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightLight,
    fontSize: AppTextSizes.fontsize14,
  );

  static final TextStyle robotoLightItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightLight,
    fontSize: AppTextSizes.fontsize12,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoMedium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize16,
  );

  static final TextStyle robotoMediumItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize14,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoRegular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize18,
  );
  static final TextStyle roboto18Medium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize18,
  );
  static final TextStyle roboto18Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize18,
  );
  static final TextStyle roboto16Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontsize16,
  );
  static final TextStyle roboto12Medium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize12,
  );
  static final TextStyle roboto12Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize12,
  );
  static final TextStyle roboto10Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize10,
  );
  static final TextStyle roboto14Medium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontsize14,
  );
  static final TextStyle roboto14Regular = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontsize14,
  );
  static final TextStyle roboto24SemiBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize24,
  );

  static final TextStyle robotoSemiBold = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontsize20,
  );

  static final TextStyle robotoSemiBoldItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontsize18,
    fontStyle: FontStyle.italic,
  );

  static final TextStyle robotoThin = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightThin,
    fontSize: AppTextSizes.fontsize10,
  );
  static final TextStyle robotoLightMedium = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightLightMedium,
    fontSize: AppTextSizes.fontsize12,
  );
  static final TextStyle robotoThinItalic = baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightThin,
    fontSize: AppTextSizes.fontsize12,
    fontStyle: FontStyle.italic,
  );
}
