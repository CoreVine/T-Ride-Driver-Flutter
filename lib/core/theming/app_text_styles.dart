import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/theming/app_font_families.dart';
import 'package:tride/core/theming/app_font_weights.dart';
import 'package:tride/core/theming/app_text_size.dart';

import 'app_colors.dart';

class AppTextStyles {
  static Color textColor = AppColors.black;

  static String getFontFamily(String fontFamily, Locale locale) {
    if (locale.languageCode == 'ar') {
      return AppFontFamilies.fontFamilyTajawal;
    }
    return fontFamily;
  }

  // Base style to reuse common properties
  static TextStyle baseStyle({
    required String fontFamily,
    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
    BuildContext? context, // Add context
  }) {
    Locale locale =
        context != null
            ? Intl.getCurrentLocale().toLocale()
            : const Locale('en');
    return TextStyle(
      fontFamily: getFontFamily(fontFamily, locale),
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
    );
  }

  // Roboto Styles
  static TextStyle roboto10Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle roboto10Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle roboto10SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle roboto10Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize10,
    context: context,
  );

  static TextStyle roboto12Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle roboto12Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle roboto12SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle roboto12Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize12,
    context: context,
  );

  static TextStyle roboto14Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle roboto14Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle roboto14SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle roboto14Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
    context: context,
  );

  static TextStyle roboto16Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle roboto16Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle roboto16SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle roboto16Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize16,
    context: context,
  );

  static TextStyle roboto18Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle roboto18Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle roboto18SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle roboto18Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize18,
    context: context,
  );

  static TextStyle roboto20Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle roboto20Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle roboto20SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle roboto20Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize20,
    context: context,
  );

  static TextStyle roboto24Regular(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle roboto24Medium(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle roboto24SemiBold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );

  static TextStyle roboto24Bold(BuildContext context) => baseStyle(
    fontFamily: AppFontFamilies.fontFamilyRoboto,
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
    context: context,
  );
}
