import 'package:flutter/material.dart';
import 'package:tride/core/helpers/spacing.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.robotoMedium.copyWith(color: AppColors.text),
        ),
        smallVerticalSpacer,
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.robotoLight.copyWith(color: AppColors.red),
        ),
      ],
    );
  }
}
