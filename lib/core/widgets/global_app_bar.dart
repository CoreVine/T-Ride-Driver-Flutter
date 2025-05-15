import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';

AppBar globalAppBar(BuildContext context, {required String title}) {
  return AppBar(
    shadowColor: Colors.transparent,
    backgroundColor: AppColors.white,
    title: Text(title, style: AppTextStyles.roboto18Medium(context)),
  );
}
